import 'dart:async';
import 'package:flutter/material.dart';
import '../../../app/router/main_scaffold.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Posle 3 sekunde idi na MainScaffold
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => MainScaffold()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Image.asset(
          'assets/images/splash_screen.png',
          fit: BoxFit.cover, // popuni ceo ekran
        ),
      ),
    );
  }
}
