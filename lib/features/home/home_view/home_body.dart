import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/features/home/widgets/animated_border_botton.dart';
import 'package:clima_quest/features/home/widgets/text_column.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () => context.go(Routes.search),
            icon: const Icon(Icons.search, color: AppColors.wh),
          ),
        ),
        const SizedBox(height: 50),
        CustomText('Korea',fontSize: 35,fontWeight: FontWeight.bold,color: AppColors.wh,),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/images/snow.png",
                      height: 150,
                      width: 200,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: AppColors.homeGradient,
                    ),
                    padding: const EdgeInsets.all(6),
                    child: TextColumn(degree: '19°',state: 'Snow', time: '9:14 am'),
                    ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 60,),
        InkWell(
          onTap: () => context.go(Routes.details),
          child: AnimatedBorderButton(
            text: "See More Details",
                ),
        ),

      ],
    ))
      );
  }
}