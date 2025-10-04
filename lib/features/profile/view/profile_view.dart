import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/features/profile/view/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const CustomText("Profile",fontWeight: FontWeight.bold,),
      ),
      body: Stack(
        children:[ 
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/background4.jpg"),
                fit: BoxFit.fill)
              ),
            ),
          ), ProfileBody(),])
    );
  }
}