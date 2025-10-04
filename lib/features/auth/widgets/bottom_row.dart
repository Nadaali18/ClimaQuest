import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';


class BottomRow extends StatelessWidget {
  const BottomRow({super.key,required this.questionT,required this.responsT,required this.onTap});
final String questionT;
final String responsT;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CustomText(questionT,fontSize: 15,fontWeight: FontWeight.w600,),
           SizedBox(width: 5,),
           InkWell(
            onTap: onTap,
            child: CustomText(responsT,color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600,),
           )
        ],
      ),
    );
  }
}