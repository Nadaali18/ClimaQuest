import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/presentation/onboarding/view/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: ()=>context.go(Routes.signUp), 
            icon: Icon(Icons.skip_next,),color: AppColors.wh,),
            SizedBox(width: 20,),
        ],
      ),
      body: OnboardingBody(),
    );
  }
}