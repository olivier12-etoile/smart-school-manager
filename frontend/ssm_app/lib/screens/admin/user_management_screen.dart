import 'package:flutter/material.dart';
import '../../services/user_service.dart';
import '../../models/user.dart';

class UserManagementScreen extends StatefulWidget {
  final UserService userService;
  const UserManagementScreen({Key? key, required this.userService}) : super(key: key);

  @override
  State<UserManagementScreen> createState() => _UserManagementScreenState();
}

class _UserManagementScreenState extends State<UserManagementScreen> {
  late Future<List<User>> _usersFuture;

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  void _loadUsers() {
    _usersFuture = widget.userService.fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gestion des utilisateurs')),
      body: FutureBuilder<List<User>>(
        future: _usersFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Erreur: ${snapshot.error}'));
          }
          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Card(
                margin: EdgeInsets.all(8),
                child: ExpansionTile(
                  title: Text('${user.name} (${user.role})'),
                  subtitle: Text(user.email),
                  children: [
                    // Gestion du rôle
                    ListTile(
                      title: Text('Changer le rôle'),
                      trailing: DropdownButton<String>(
                        value: user.role,
                        items: ['censeur', 'secretaire', 'enseignant']
                            .map((r) => DropdownMenuItem(value: r, child: Text(r)))
                            .toList(),
                        onChanged: (newRole) async {
                          try {
                            await widget.userService.updateUserRole(user.id, newRole!);
                            _loadUsers();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Rôle mis à jour')));
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erreur: $e')));
                          }
                        },
                      ),
                    ),
                    // Gestion des modules (permissions)
                    ..._buildModuleSwitches(user),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showAddUserDialog(),
      ),
    );
  }

  List<Widget> _buildModuleSwitches(User user) {
    const allModules = ['notes_validation', 'paiements_consultation', 'bulletins_generation', 'gestion_emplois'];
    Map<String, bool> current = {};
    for (var p in user.modulePermissions) {
      current[p.moduleName] = p.isAllowed;
    }
    return allModules.map((module) {
      return SwitchListTile(
        title: Text(module),
        value: current[module] ?? true,
        onChanged: (bool value) async {
          // Créer une nouvelle liste de permissions
          final newPermissions = user.modulePermissions.map((p) => ModulePermission(moduleName: p.moduleName, isAllowed: p.isAllowed)).toList();
          final existingIndex = newPermissions.indexWhere((p) => p.moduleName == module);
          if (existingIndex != -1) {
            newPermissions[existingIndex].isAllowed = value;
          } else {
            newPermissions.add(ModulePermission(moduleName: module, isAllowed: value));
          }
          try {
            await widget.userService.updateUserModules(user.id, newPermissions);
            _loadUsers();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Permission mise à jour')));
          } catch (e) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erreur: $e')));
          }
        },
      );
    }).toList();
  }

  void _showAddUserDialog() {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    String selectedRole = 'enseignant';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Ajouter un utilisateur'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Nom complet')),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
            DropdownButtonFormField<String>(
              value: selectedRole,
              items: ['censeur', 'secretaire', 'enseignant'].map((r) => DropdownMenuItem(value: r, child: Text(r))).toList(),
              onChanged: (v) => selectedRole = v!,
              decoration: InputDecoration(labelText: 'Rôle'),
            ),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text('Annuler')),
          ElevatedButton(
            onPressed: () async {
              try {
                await widget.userService.createUser(
                  name: nameController.text,
                  email: emailController.text,
                  role: selectedRole,
                );
                _loadUsers();
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Utilisateur créé')));
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Erreur: $e')));
              }
            },
            child: Text('Créer'),
          ),
        ],
      ),
    );
  }
}