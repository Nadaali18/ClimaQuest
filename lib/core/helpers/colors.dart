import 'package:flutter/material.dart';

class AppColors {
  static const Color textFieldColor = Color(0xFFF5F6FA);
  static const Color buttonColor = Color.fromARGB(255, 246, 71, 176);
  static const Color wh= Colors.white;
  static const Color bl= Colors.black;
  static Color? hintColor= Colors.grey[700];
  static const Gradient homeGradient =  LinearGradient(
      colors: [
    Color.fromARGB(255, 63, 1, 72), 
    Colors.transparent, 
     ],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
  static const Gradient buttonGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 252, 63, 230), 
      Color.fromARGB(255, 63, 1, 72),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const Gradient containerColor = LinearGradient(
    colors: [
      Color.fromARGB(255, 252, 63, 230), 
      Color.fromARGB(255, 63, 1, 72),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );
  static const Gradient logoutColor = LinearGradient(
    colors: [
      Color.fromARGB(255, 191, 79, 79), 
      Color.fromARGB(255, 72, 1, 1),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

}

