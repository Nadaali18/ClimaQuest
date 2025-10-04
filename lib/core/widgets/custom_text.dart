import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  const CustomText(
     this.text,
      {super.key, 
      this.fontWeight,
      this.fontSize,
      this.color,
      this.textdirection,
      this.fontFamily,
      });
  final String? text;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final double? fontSize;
  final Color? color;
  final TextAlign? textdirection;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
       textAlign: textdirection,
        maxLines: 15,
        overflow: TextOverflow.ellipsis,
       style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
          fontFamily: fontFamily),
    );
  }
}
