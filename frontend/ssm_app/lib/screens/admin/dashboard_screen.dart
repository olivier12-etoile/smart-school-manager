import 'package:flutter/material.dart';
import '../../services/auth_service.dart';
import '../../services/user_service.dart';
import 'user_management_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Map<String, dynamic>? _currentUser;
  String? _token;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final user = await AuthService.getCurrentUser();
    final token = await AuthService.getToken();
    setState(() {
      _currentUser = user;
      _token = token;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentUser == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final role = _currentUser!['role'];
    final isDirector = role == 'directeur';

    return Scaffold(
      appBar: AppBar(title: Text('Tableau de bord SSM')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            if (isDirector)
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Gestion des utilisateurs'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserManagementScreen(
                        userService: UserService(token: _token!),
                      ),
                    ),
                  );
                },
              ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Déconnexion'),
              onTap: () async {
                await AuthService.clear();
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenue, ${_currentUser!['name']}\nRôle: $role'),
      ),
    );
  }
}