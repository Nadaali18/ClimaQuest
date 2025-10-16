import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String details;

  const InfoCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.details,
  });

  @override
  State<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (widget.imagePath.isNotEmpty)
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(widget.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                SizedBox(width: 8),
                Expanded(
                  child: CustomText(
                    widget.title,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 12),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                 backgroundColor: AppColors.buttonColor,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
               ),
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: CustomText(
                  isExpanded ? 'Hide Details' : 'See Details',
                    color: AppColors.wh,
                    fontWeight: FontWeight.bold,
                ),
              ),
              ],
            ),
            SizedBox(height: 10),
            if (isExpanded)
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.purple.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: CustomText(
              widget.details,
                fontSize: 13,
                color: AppColors.wh,
            ),
          ),
          ],
        ),
      ),
    );
  }
}

