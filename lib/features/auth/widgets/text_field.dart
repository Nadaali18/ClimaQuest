import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/widgets/custom_container_shadow.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    required this.title,
  });
  final String hint;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25, vertical:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText( 
            title,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.wh,
          ),
          SizedBox(height: 6,),
          CustomContainerShadow(
            height: 45,
            child: Center(
              child: TextFormField(
                cursorColor: AppColors.bl,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.bl,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(icon, color: AppColors.hintColor,),
                  hintText: hint,
                  hintStyle: TextStyle(
                    color: AppColors.hintColor,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
