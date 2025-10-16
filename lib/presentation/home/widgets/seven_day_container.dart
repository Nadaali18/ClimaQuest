import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SevenDayContainer extends StatelessWidget {
  const SevenDayContainer({super.key,
    required this.day,
    required this.temperature,
    required this.imagePath,
  });
  final String day;
  final dynamic temperature;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        gradient: AppColors.containerColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            '$temperature°',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.wh,
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          CustomText(
            day,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.wh,
          ),
        ],
      ),
    );
  }
}