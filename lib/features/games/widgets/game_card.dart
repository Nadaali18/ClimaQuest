import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/features/games/widgets/eveleted_button.dart';
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
            shadowColor: AppColors.wh,
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
                     color: AppColors.wh,
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
                    EveletedButton(url: url),
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