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
              color: Colors.white,
            ),
            SizedBox(height: 6,),
          CustomContainerShadow(
            height: 45,
            child: TextFormField(
              cursorColor: Colors.black,
              obscureText: obscureText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14,
                ),
                prefixIcon: Icon(Icons.lock_outline, color: Colors.grey[700]),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey[700],
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
