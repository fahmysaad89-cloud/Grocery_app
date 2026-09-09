import 'package:flutter/material.dart';
import 'package:gorcery_app/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const Color kPrimaryGreen = Color(0xff53B175);

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 4000), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryGreen,
      body: Center(
        child: Image.asset(
          'assets/icons/splash.png',
          width: 267.4164733886719,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.eco, color: Colors.white, size: 90),
        ),
      ),
    );
  }
}
