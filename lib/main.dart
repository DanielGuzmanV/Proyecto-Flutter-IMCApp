import 'package:flutter/material.dart';
import 'package:imc_app/config/theme/app_theme.dart';
import 'package:imc_app/presentation/screens/imc_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ThemeColor.background,

        appBar: AppBar(
          backgroundColor: ThemeColor.primary,
          foregroundColor: Colors.white,
          title: const Text('IMC Calculator'),
        ),

        body: const ImcHomeScreen(),
      ),
    );
  }
}
