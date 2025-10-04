import 'package:clima_quest/features/splash/splash_screen_body.dart';
import 'package:flutter/material.dart';


class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBody(),
    );
  }
}