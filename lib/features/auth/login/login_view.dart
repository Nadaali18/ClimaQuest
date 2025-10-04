import 'package:clima_quest/features/auth/login/login_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[ 
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/background3.jpg"),
              fit: BoxFit.fill)
            ),
          ),
          LoginBody()]),);
  }
}