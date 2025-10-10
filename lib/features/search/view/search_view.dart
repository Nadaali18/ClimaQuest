import 'package:clima_quest/core/widgets/custom_container_2.dart';
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
          CustomContainer2(),
          SearchBody()]),
    );
  }
}