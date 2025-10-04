import 'package:clima_quest/features/games/widgets/game_card.dart';
import 'package:flutter/material.dart';

class GamesBody extends StatefulWidget {
  const GamesBody({super.key});

  @override
  State<GamesBody> createState() => _GamesBodyState();
}

class _GamesBodyState extends State<GamesBody> {
  List games =[
    {
      "image":"assets/images/game1.jpg",
      "title":"Weather Match",
      "description":"Match weather words with pictures",
      "url":"https://wordwall.net/resource/35872316/fsh-weather",
    },
    {
      "image":"assets/images/game2.jpg",
      "title":"Spelling Game",
      "description":"Rearrange letters to form weather words",
      "url":"https://wordwall.net/resource/36119423/spelling/weather-vocabulary-anagram"
    },
    {
      "image":"assets/images/game3.jpg",
      "title":"Four Seasons",
      "description":"Choose the correct season image",
      "url":"https://wordwall.net/resource/74406010/science/seasons"
    },
    {
      "image":"assets/images/game5.jpg",
      "title":"Weather Cards",
      "description":"Match cards of weather and words",
      "url":"https://wordwall.net/resource/11825102/weather"
    },
    {
      "image":"assets/images/game4.jpg",
      "title":"English Weather",
      "description":"Learn and practice weather vocabulary",
      "url":"https://www.gamestolearnenglish.com/weather/#game"
    },
  ];
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