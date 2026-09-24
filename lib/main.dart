import 'package:flutter/material.dart';
import 'package:latkuis_mobile/screens/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Latihan Kuis Mobile', home: LoginPage());
  }
}
