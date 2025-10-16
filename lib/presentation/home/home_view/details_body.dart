import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/presentation/home/widgets/info_card.dart';
import 'package:clima_quest/presentation/home/widgets/seven_day_forecast.dart';
import 'package:clima_quest/presentation/home/widgets/smar_info_card.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,width: 200,
                  child: Image.asset('assets/images/snow.png',fit:BoxFit.fill)),
                SizedBox(height: 10,),
                CustomText('19°',fontSize: 40,fontWeight: FontWeight.bold,color: AppColors.wh,),
                SizedBox(height: 5,),
                CustomText('Precipitations',fontSize: 20,fontWeight: FontWeight.w200,color: AppColors.wh,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText('Max: 24° ',fontSize: 20,fontWeight: FontWeight.w200,color: AppColors.wh,),
                    SizedBox(width:30),
                    CustomText('Min: 18°',fontSize: 20,fontWeight: FontWeight.w200,color: AppColors.wh,),
                  ],
                ),
                SizedBox(height: 15,),
                SevenDayForecast(),
                SizedBox(height: 15,),
                 InfoCard(
                  imagePath: 'assets/images/wear.jpeg',
                  title: 'What Should I Wear?',
                  details: '🌡️ Today\'s Temp: 15°C dropping to 10°C tonight.\n\n👕 Recommendation: Wear layers, add a jacket for evening.\n\n🌧 Rain chance 60% → Carry an umbrella.\n\n❄ If windy: Avoid light clothing, add a scarf/hood.',
                ),
                InfoCard(
                  imagePath: 'assets/images/plan.jpeg',
                  title: 'Plan My Day',
                  details: '✅ Best time for outdoor walk: 9 AM - 12 PM (clear skies).\n\n🍽️ Picnic: Perfect today at 2 PM, low wind & mild sun.\n\n🏃 Workout: Strong winds at 6 PM → move exercise indoors.\n\n⚠️ Storm alert: Cancel evening bike ride, high risk after 8 PM.',
                ),
                InfoCard(
                  imagePath: 'assets/images/health.jpeg',
                  title: 'Stay Safe & Healthy',
                  details: '🌞 UV Index: High (8/10) → Use sunscreen, hat, sunglasses.\n\n🥵 Heat Alert: Feels like 35°C → Stay hydrated, avoid midday activity.\n\n🌬 Air Quality: Moderate (AQI 92) → Sensitive groups should limit outdoor time.\n\n❄ Cold advisory tomorrow morning: Gloves & thermal wear recommended.',
                ),
                InfoCard(
                  imagePath: 'assets/images/planAhead.jpeg',
                  title: 'Plan Ahead',
                  details: '📅 Next Month: Best travel time for hiking trip = 2nd week (low rainfall).\n\n🌍 Top 10 regions changing this year: Sahara Desert (increased dust storms), Alaska (longer snow season)…\n\n📊 Climate trend: This summer → 20% higher chance of heatwaves than last year.\n\n💡 Personalized Tip: You prefer “cool weather” → Best destinations: Switzerland (June), Canada (August).',
                ),
               
                SmartInfoCard(
                  imagePath: 'assets/images/smart.jpeg', 
                  title: 'Smart Navigation & Safety', 
                  details1: 'Route A (Fastest)\n • ETA: 30m\n • Heavy: Rain in 10km\n • Risk level: High', 
                  details2: 'Route B (Safer)\n • ETA: 45m\n • Clear weather ahead\n • Recommended'
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}