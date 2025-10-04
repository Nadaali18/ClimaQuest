import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90,bottom: 40),
      child: Column(
        children: [
          CustomText(
            text,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            ),
        ],
      ),
    );
  }
}