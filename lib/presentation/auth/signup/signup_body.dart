import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/core/widgets/gradient_button.dart';
import 'package:clima_quest/presentation/auth/widgets/bottom_row.dart';
import 'package:clima_quest/presentation/auth/widgets/custom_info_container.dart';
import 'package:clima_quest/presentation/auth/widgets/header.dart';
import 'package:clima_quest/presentation/auth/widgets/pass_text_field.dart';
import 'package:clima_quest/presentation/auth/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children:[
          Header(text: 'Welcome Explorer!'),
             CustomInfoContainer(
              height: 520,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                  const CustomText(
                    'Sign Up',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.wh,
                  ),
                    SizedBox(height:20),
                    const CustomTextField(
                      title: "Name",
                      hint: 'Enter Your Full Name',
                      icon: Icons.person_outline,
                    ),
                    CustomTextField(title: "Email",hint: 'Enter Your Email', icon: Icons.email_outlined),
                    PassTextField(title: "Password",hint: 'Enter Your Password'),
                    const PassTextField(
                      title: "Confirm Password",
                      hint: 'Confirm Your Password',
                    ),
                    SizedBox(height:20),
                    GradientButton(padding: 25,text: 'Sign Up', onPressed: ()=>context.go(Routes.navigation)),
                    BottomRow(questionT: 'Already have an account?',
                      responsT: 'Login',
                      onTap: () => context.go(Routes.login),),
                    SizedBox(height:20),
                  ],
                ),
              ),
            ),
           ],
      ),
    );
  }
}