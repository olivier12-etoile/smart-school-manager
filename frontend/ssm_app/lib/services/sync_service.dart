import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../database/database_service.dart';
import '../models/eleve.dart';
// ... autres modèles

class SyncService {
  static final SyncService _instance = SyncService._internal();
  factory SyncService() => _instance;
  SyncService._internal();

  Timer? _timer;
  bool _syncing = false;

  void startPeriodicSync() {
    _timer?.cancel();
    _timer = Timer.periodic(Duration(minutes: 5), (timer) async {
      await syncIfNeeded();
    });
    // aussi écouter les changements de connectivité
    Connectivity().onConnectivityChanged.listen((event) async {
      if (event != ConnectivityResult.none) {
        await syncIfNeeded();
      }
    });
  }

  Future<void> syncIfNeeded() async {
    if (_syncing) return;
    final connectivity = await Connectivity().checkConnectivity();
    if (connectivity == ConnectivityResult.none) return;

    _syncing = true;
    try {
      await _pushUnsynchronizedData();
      await _pullRemoteUpdates();
    } catch (e) {
      print("Erreur sync: $e");
    } finally {
      _syncing = false;
    }
  }

  Future<void> _pushUnsynchronizedData() async {
    // Récupérer tous les objets avec isSynced == false
    final elevesNonSync = await DatabaseService.isar.eleves.where().filter().isSyncedEqualTo(false).findAll();
    final notesNonSync = await DatabaseService.isar.notes.where().filter().isSyncedEqualTo(false).findAll();
    // ... autres

    if (elevesNonSync.isEmpty && notesNonSync.isEmpty) return;

    // Envoyer au backend Laravel (endpoint /api/sync/push)
    final token = await getAuthToken(); // stocké après login
    final response = await http.post(
      Uri.parse('https://votre-api.com/api/sync/push'),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'eleves': elevesNonSync.map((e) => e.toJson()).toList(),
        'notes': notesNonSync.map((n) => n.toJson()).toList(),
      }),
    );

    if (response.statusCode == 200) {
      // Marquer comme synchronisés
      final List<dynamic> syncedUuids = jsonDecode(response.body)['synced_uuids'];
      await DatabaseService.isar.writeTxn(() async {
        for (var uuid in syncedUuids) {
          final eleve = await DatabaseService.isar.eleves.where().uuidEqualTo(uuid).findFirst();
          if (eleve != null) {
            eleve.isSynced = true;
            await DatabaseService.isar.eleves.put(eleve);
          }
          // faire de même pour notes
        }
      });
    }
  }

  Future<void> _pullRemoteUpdates() async {
    // Demander les mises à jour depuis le serveur (depuis lastSync timestamp)
    final lastSync = await getLastSyncTime();
    final response = await http.get(
      Uri.parse('https://votre-api.com/api/sync/pull?since=$lastSync'),
      headers: {'Authorization': 'Bearer ${await getAuthToken()}'},
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      await DatabaseService.isar.writeTxn(() async {
        // Mettre à jour ou insérer les objets reçus avec résolution de conflits
        for (var jsonEleve in data['eleves']) {
          await _mergeEleve(Eleve.fromJson(jsonEleve));
        }
        // idem pour notes, paiements...
      });
      await saveLastSyncTime(DateTime.now().toIso8601String());
    }
  }

  Future<void> _mergeEleve(Eleve remoteEleve) async {
    final local = await DatabaseService.isar.eleves.where().uuidEqualTo(remoteEleve.uuid).findFirst();
    if (local == null) {
      // nouveau, insérer
      await DatabaseService.isar.eleves.put(remoteEleve);
    } else {
      // résolution de conflit : last write win avec priorité admin
      // si remote.updatedAt > local.updatedAt => on prend remote
      // OU si remote modifié par admin (champ role dans metadata)
      if (remoteEleve.updatedAt.isAfter(local.updatedAt)) {
        await DatabaseService.isar.eleves.put(remoteEleve);
      }
      // sinon, ignorer (conserver local)
    }
  }
}