import 'package:isar/isar.dart';

part 'eleve.g.dart';

@collection()
class Eleve {
  Id id = Isar.autoIncrement; // clé locale auto-incrémentée
  late String uuid;           // UUID universel

  late String matricule;
  late String nom;
  late String prenom;
  DateTime? dateNaissance;
  String? sexe;
  String? lieuNaissance;
  String? adresse;
  String? telephoneParent;
  String? nomParent;
  bool estActif = true;

  // Champs de synchronisation
  late bool isSynced;         // true si déjà envoyé au serveur
  late DateTime updatedAt;    // dernière modification locale

  // Clé étrangère (école)
  late int ecoleId;
}