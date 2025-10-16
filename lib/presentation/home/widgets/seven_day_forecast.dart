import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/helpers/constants.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/presentation/home/widgets/seven_day_container.dart';
import 'package:flutter/material.dart';

class SevenDayForecast extends StatefulWidget {
  const SevenDayForecast({super.key});

  @override
  State<SevenDayForecast> createState() => _SevenDayForecastState();
}

class _SevenDayForecastState extends State<SevenDayForecast> {
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: CustomText(
                '7 Days Forecast',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.wh,
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: weatherList.length,
              itemBuilder: (context, index) => SevenDayContainer(
                day: weatherList[index]['day'],
                temperature: weatherList[index]['temperature'],
                imagePath: weatherList[index]['imagePath'],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

