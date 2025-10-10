import 'package:flutter/material.dart';

class CustomContainer2 extends StatelessWidget {
  const CustomContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/background4.jpg"),
                fit: BoxFit.fill)
              ),
            ),
          );
  }
}