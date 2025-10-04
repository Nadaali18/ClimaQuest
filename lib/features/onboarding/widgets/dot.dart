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
        color: currentPage == index ? Colors.white : Colors.black,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white,width: 2),
      ),
    );
  }
}