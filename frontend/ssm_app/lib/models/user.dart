class ModulePermission {
  String moduleName;
  bool isAllowed;

  ModulePermission({required this.moduleName, required this.isAllowed});

  factory ModulePermission.fromJson(Map<String, dynamic> json) {
    return ModulePermission(
      moduleName: json['module_name'] as String,
      isAllowed: (json['is_allowed'] as bool?) ?? true,
    );
  }

  Map<String, dynamic> toJson() => {
        'module_name': moduleName,
        'is_allowed': isAllowed,
      };
}

class User {
  final int id;
  final String name;
  final String email;
  String role;
  List<ModulePermission> modulePermissions;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.modulePermissions,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final rawPerms = json['module_permissions'] as List<dynamic>? ?? [];
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      modulePermissions: rawPerms
          .map((p) => ModulePermission.fromJson(p as Map<String, dynamic>))
          .toList(),
    );
  }
}