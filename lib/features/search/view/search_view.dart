import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/features/search/view/search_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

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
          SearchBody()]),
    );
  }
}