import 'package:assignment12_app/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SettingsScreen());
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
