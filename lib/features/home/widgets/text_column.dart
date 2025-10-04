import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({super.key,required this.state, required this.time,required this.degree});
final String degree;
final String state;
final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(state, fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white70),
              CustomText(degree,fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),
              CustomText(time, fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white70),
            ],
          
          ),
        ],
      ),
    );
  }
}