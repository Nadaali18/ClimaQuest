import 'package:clima_quest/core/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double borderRadius;
  final double? padding;
  final double? width;
  final double? height;
  final Gradient? gradient;

  const GradientButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.gradient,
    this.borderRadius = 30,
    this.padding,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding?? 50),
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 45,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            padding: EdgeInsets.zero,
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: gradient?? AppColors.buttonGradient,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Container(
              alignment: Alignment.center,
              padding:const EdgeInsets.symmetric(vertical: 10),
              child: CustomText(
                text,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
