import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/presentation/games/widgets/web_view_page.dart';

import 'package:flutter/material.dart';

class EveletedButton extends StatelessWidget {
  const EveletedButton({super.key, required this.url});
final String url;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewPage(url: url),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            'Play',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.wh,
          ),
          SizedBox(width: 4),
          Icon(
            Icons.play_arrow_rounded,
            color: AppColors.wh,
            size: 16,
          ),
        ],
      ),
    );
  }
}