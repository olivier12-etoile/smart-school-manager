import 'package:flutter/material.dart';
import 'screens/admin/login_screen.dart';

void main() {
  runApp(const SSMApp());
}

class SSMApp extends StatelessWidget {
  const SSMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart School Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        '/login': (context) => LoginScreen(),
      },
      home: LoginScreen(),
    );
  }
}