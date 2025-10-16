import 'package:clima_quest/core/widgets/custom_container_2.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/presentation/profile/view/profile_body.dart';
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
          CustomContainer2(),
          ProfileBody(),])
    );
  }
}