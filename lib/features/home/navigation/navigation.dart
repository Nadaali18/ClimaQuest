import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/features/games/view/games_view.dart';
import 'package:clima_quest/features/home/home_view/home_view.dart';
import 'package:clima_quest/features/profile/view/profile_view.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({super.key});

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int currentPage= 1;
  List pages=[
    GamesView(),
    HomeView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: pages[currentPage],
      bottomNavigationBar: CurvedNavigationBar(

        index: currentPage,
        color: Colors.purple,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.purple,
        onTap: (index) {
          setState(() {
            currentPage=index;
          });
        },
        items: const[
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.games_rounded,color: Colors.white,),
              CustomText('Games'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home_rounded,color: Colors.white,),
              CustomText('Home'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person,color: Colors.white,),
              CustomText('Profile'),
            ],
          ),
        ],
        ),
    );
  }
}