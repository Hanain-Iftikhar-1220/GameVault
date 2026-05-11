import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'core/constants.dart';

void main() {
  runApp(const GameVaultApp());
}

class GameVaultApp extends StatelessWidget {
  const GameVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GameVault',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        primaryColor: AppColors.primary,
      ),
      home: const SplashScreen(),
    );
  }
}
