import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../config/app_config.dart';
import '../../services/auth_service.dart';
import 'dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _schoolCodeController = TextEditingController();
  bool _isLoading = false;

  Future<void> _login() async {
    setState(() => _isLoading = true);
    try {
      final response = await http.post(
        Uri.parse('${AppConfig.apiBaseUrl}/api/login'),
        body: {
          'email': _emailController.text,
          'password': _passwordController.text,
          'school_code': _schoolCodeController.text,
        },
      );
      final data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        await AuthService.saveToken(data['access_token']);
        await AuthService.saveCurrentUser(data['user']);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DashboardScreen()));
      } else {
        _showError(data['message'] ?? 'Erreur de connexion');
      }
    } catch (e) {
      _showError(e.toString());
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _showError(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Connexion SSM')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: _schoolCodeController, decoration: InputDecoration(labelText: 'Code école')),
            TextField(controller: _emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: _passwordController, decoration: InputDecoration(labelText: 'Mot de passe'), obscureText: true),
            SizedBox(height: 20),
            _isLoading ? CircularProgressIndicator() : ElevatedButton(onPressed: _login, child: Text('Se connecter')),
          ],
        ),
      ),
    );
  }
}