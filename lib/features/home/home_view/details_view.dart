import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/features/home/home_view/details_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: ()=>context.go(Routes.navigation), icon: Icon(Icons.arrow_back_ios_rounded)),
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
          ), 
          DetailsBody()]),
    );
  }
}