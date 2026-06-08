import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';

class DatabaseService {
  static late Isar isar;

  // Génère une clé de chiffrement à partir du mot de passe utilisateur (32 bytes)
  static Future<List<int>> getEncryptionKey(String password) async {
    final salt = utf8.encode('ssm_salt_2025'); // En production, salt unique par user
    final pbkdf2 = PBKDF2(
      macAlgorithm: HMac.sha256(),
      iterations: 100000,
      bits: 256,
    );
    final key = pbkdf2.deriveKeySync(
      utf8.encode(password) as Uint8List,
      salt as Uint8List,
    );
    return key.bytes;
  }

  static Future<void> init({required String userPassword}) async {
    final dir = await getApplicationDocumentsDirectory();
    final key = await getEncryptionKey(userPassword);
    isar = await Isar.open(
      [EcoleSchema, UserSchema, EleveSchema, ClasseSchema, MatiereSchema, NoteSchema, PaiementSchema],
      directory: dir.path,
      encryptionKey: key,
    );
  }

  
}