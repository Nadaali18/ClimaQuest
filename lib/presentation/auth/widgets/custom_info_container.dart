import 'package:clima_quest/core/helpers/colors.dart';
import 'package:flutter/material.dart';

class CustomInfoContainer extends StatelessWidget {
  const CustomInfoContainer({super.key,this.height = 450, required this.child});
final double height;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: height,
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.2), 
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                  color: AppColors.wh.withValues(alpha: 0.4),
                  width: 1.5,
                ),
             ),
             child: child,
            ));
  }
}