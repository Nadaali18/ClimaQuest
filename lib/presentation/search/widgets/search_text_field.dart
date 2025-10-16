import 'package:clima_quest/core/helpers/colors.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
             decoration: InputDecoration(
             hintText: 'Enter location',
             hintStyle: TextStyle(color: Colors.white70),
             border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(20),
            ),
              filled: true,
              fillColor: Colors.purple.withValues(alpha: 0.2),
              contentPadding: EdgeInsets.symmetric(
                 horizontal: 12,
                 vertical: 8,
              ),
              ),
                 style: TextStyle(color: AppColors.wh),
              );
  }
}