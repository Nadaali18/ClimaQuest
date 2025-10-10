import 'package:clima_quest/core/widgets/custom_container_1.dart';
import 'package:clima_quest/features/auth/login/login_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[ 
          CustomContainer(),
          LoginBody()]),);
  }
}

