import 'package:flutter/material.dart';
import 'package:imc_app/config/theme/app_theme.dart';

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

        body: const Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
