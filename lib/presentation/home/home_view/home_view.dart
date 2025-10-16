import 'package:clima_quest/core/widgets/custom_container_2.dart';
import 'package:clima_quest/presentation/home/home_view/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[ 
          CustomContainer2(),
          HomeBody(),])
    );
  }
}