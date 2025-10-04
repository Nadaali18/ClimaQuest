import 'package:clima_quest/features/home/home_view/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[ 
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/background4.jpg"),
                fit: BoxFit.fill)
              ),
            ),
          ), 
          HomeBody(),])
    );
  }
}