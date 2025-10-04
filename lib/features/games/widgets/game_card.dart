import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/features/games/widgets/web_view_page.dart';
import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key,required this.url,required this.imagePath,required this.title,required this.description});
final String imagePath;
final String title;
final String description;
final String url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Card(
          color: const Color.fromARGB(255, 140, 0, 205).withValues(alpha: 0.4),
            elevation: 4,
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          SizedBox(height: 4),
          CustomText(
            description,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white70,
          ),
        ],
      ),
    ),
    SizedBox(width: 12),
    ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewPage(url: url),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 246, 71, 176),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            'Play',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          SizedBox(width: 4),
          Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 16,
          ),
        ],
      ),
    ),
  ],
)
              ],
            ),
          ),
        ),
      ),
    );
  }
}