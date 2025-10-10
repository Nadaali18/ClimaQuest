import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/widgets/custom_container_shadow.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';


class PassTextField extends StatefulWidget {
  const PassTextField({super.key,required this.hint,required this.title});
final String hint;
final String title;
  @override
  State<PassTextField> createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  bool obscureText = true; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:25,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText( 
              widget.title,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.wh,
            ),
            SizedBox(height: 6,),
          CustomContainerShadow(
            height: 45,
            child: TextFormField(
              cursorColor: AppColors.bl,
              obscureText: obscureText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.bl,
              ),
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: TextStyle(
                  color: AppColors.hintColor,
                  fontSize: 14,
                ),
                prefixIcon: Icon(Icons.lock_outline, color: AppColors.hintColor),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.hintColor,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText; 
                    });
                  },
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
