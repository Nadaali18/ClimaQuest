import 'dart:async';
import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});
  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}
class _SplashScreenBodyState extends State<SplashScreenBody> {
  bool visible = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() {
        visible = true;
      });
    });
    Timer(const Duration(seconds: 4), () {
      if (mounted) {
        context.go(Routes.onboarding);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        opacity: visible ? 1.0 : 0.0,
        duration: const Duration(seconds: 4),
        curve: Curves.easeIn,
        child: AnimatedScale(
          scale: visible ? 1.0 : 0.8,
          duration: const Duration(seconds: 4),
          curve: Curves.easeOutBack,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 250,
                height: 250,
              ),
              const SizedBox(height: 20),
              const CustomText(
                "ClimaQuest",
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: AppColors.wh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
