import 'package:clima_quest/core/helpers/colors.dart';
import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({super.key,required this.currentPage,required this.index});
  final int index;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: currentPage == index ? AppColors.wh : AppColors.bl,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.bl,width: 2),
      ),
    );
  }
}