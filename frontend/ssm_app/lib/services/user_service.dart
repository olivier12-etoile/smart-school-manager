import 'package:http/http.dart' as http;
import 'dart:convert';
import '../config/app_config.dart';
import '../models/user.dart';

class UserService {
  final String token;

  UserService({required this.token});

  Map<String, String> get _headers => {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

  Future<List<User>> fetchUsers() async {
    final response = await http.get(
      Uri.parse('${AppConfig.apiBaseUrl}/api/users'),
      headers: _headers,
    );
    if (response.statusCode == 200) {
      final dynamic decoded = jsonDecode(response.body);
      final List<dynamic> list =
          decoded is List ? decoded : decoded['data'] as List<dynamic>;
      return list
          .map((u) => User.fromJson(u as Map<String, dynamic>))
          .toList();
    }
    throw Exception('Erreur ${response.statusCode}: ${response.body}');
  }

  Future<void> updateUserRole(int userId, String newRole) async {
    final response = await http.patch(
      Uri.parse('${AppConfig.apiBaseUrl}/api/users/$userId/role'),
      headers: _headers,
      body: jsonEncode({'role': newRole}),
    );
    if (response.statusCode != 200) {
      throw Exception('Erreur rôle: ${response.body}');
    }
  }

  Future<void> updateUserModules(
      int userId, List<ModulePermission> permissions) async {
    final response = await http.patch(
      Uri.parse('${AppConfig.apiBaseUrl}/api/users/$userId/modules'),
      headers: _headers,
      body: jsonEncode({
        'permissions': permissions.map((p) => p.toJson()).toList(),
      }),
    );
    if (response.statusCode != 200) {
      throw Exception('Erreur modules: ${response.body}');
    }
  }

  Future<void> createUser({
    required String name,
    required String email,
    required String role,
  }) async {
    final response = await http.post(
      Uri.parse('${AppConfig.apiBaseUrl}/api/users'),
      headers: _headers,
      body: jsonEncode({'name': name, 'email': email, 'role': role}),
    );
    if (response.statusCode != 200 && response.statusCode != 201) {
      throw Exception('Erreur création: ${response.body}');
    }
  }
}