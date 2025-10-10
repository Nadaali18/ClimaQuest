import 'package:clima_quest/core/widgets/custom_container_2.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/features/games/view/games_body.dart';
import 'package:flutter/material.dart';

class GamesView extends StatelessWidget {
  const GamesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: CustomText("Weather Games",),
        centerTitle: true,
      ),
      body: Stack(
        children:[ 
          CustomContainer2(),
          const GamesBody()]),
    );
  }
}