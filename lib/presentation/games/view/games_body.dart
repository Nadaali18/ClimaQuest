
import 'package:clima_quest/core/helpers/constants.dart';
import 'package:clima_quest/presentation/games/widgets/game_card.dart';
import 'package:flutter/material.dart';

class GamesBody extends StatefulWidget {
  const GamesBody({super.key});

  @override
  State<GamesBody> createState() => _GamesBodyState();
}

class _GamesBodyState extends State<GamesBody> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: games.length,
      itemBuilder: (context,index)=>GameCard(
        imagePath: games[index]['image'],
        title: games[index]['title'],
        description: games[index]['description'],
        url: games[index]['url'],
        ),
      );
  }
}