import 'package:flutter/material.dart';
import 'package:gorcery_app/screens/splash_screen.dart';

class GorceryApp extends StatelessWidget {
  const GorceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
