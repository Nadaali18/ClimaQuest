import 'package:clima_quest/features/auth/signup/signup_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/background3.jpg"),
              fit: BoxFit.fill)
            ),
          ),
          SignupBody(),])
    );
  }
}