import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/core/widgets/gradient_button.dart';
import 'package:clima_quest/features/auth/widgets/bottom_row.dart';
import 'package:clima_quest/features/auth/widgets/header.dart';
import 'package:clima_quest/features/auth/widgets/pass_text_field.dart';
import 'package:clima_quest/features/auth/widgets/remember_row.dart';
import 'package:clima_quest/features/auth/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children:[
          Header(text: 'Welcome Back!'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 450,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.2), 
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                  color: Colors.white.withValues(alpha: 0.4),
                  width: 1.5,
                ),
             ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                  const CustomText(
                    'Login',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                    SizedBox(height:20),
                    CustomTextField(title: "Email",hint: 'Enter Your Email', icon: Icons.email_outlined),
                    PassTextField(title: "Password",hint: 'Enter Your Password'),
                    RememberRow(),
                    GradientButton(padding: 25,text: 'Login', onPressed: ()=>context.go(Routes.navigation)),
                    BottomRow(questionT: 'Don\'t have an account yet? ', responsT: 'Sign up',onTap: () => context.go(Routes.signUp),),
                    SizedBox(height:20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}