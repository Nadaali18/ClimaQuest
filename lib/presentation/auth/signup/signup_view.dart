import 'package:clima_quest/core/widgets/custom_container_1.dart';
import 'package:clima_quest/presentation/auth/signup/signup_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
          CustomContainer(),
          SignupBody(),])
    );
  }
}