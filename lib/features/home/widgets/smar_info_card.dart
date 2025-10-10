import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SmartInfoCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String details1;
  final String details2;

  const SmartInfoCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.details1,
    required this.details2,
  });

  @override
  State<SmartInfoCard> createState() => _SmartInfoCardState();
}

class _SmartInfoCardState extends State<SmartInfoCard> {
  bool isExpanded = false;
  bool isStarted = false;
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String buttonText = 'See Details';
    if (isExpanded && isStarted) {
      buttonText = 'Hide Details';
    } else if (isExpanded && !isStarted) {
      buttonText = 'Start';
    } else {
      buttonText = 'See Details';
    }

    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
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
                SizedBox(width: 12),
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
                      if (!isExpanded) {
                        isExpanded = true;
                      } else if (isExpanded && !isStarted) {
                        isStarted = true;
                      } else {
                        isExpanded = false;
                        isStarted = false;
                      }
                    });
                  },
                  child: CustomText(
                    buttonText,
                    color: AppColors.wh,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            if (isExpanded) ...[
              SizedBox(height: 16),
              if (!isStarted) ...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Set Destination',
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                      color: AppColors.wh,
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: locationController,
                      decoration: InputDecoration(
                        hintText: 'Enter location',
                        hintStyle: TextStyle(color: AppColors.hintColor),
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
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],

              if (isStarted) ...[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:CustomText(
                        'Destination: ${locationController.text}',
                        fontSize: 16,
                        color: AppColors.wh,
                      ),
                ),   
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:CustomText(
                        widget.details1,
                        fontSize: 13,
                        color: AppColors.wh,
                      ),
                ),   
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: CustomText(
                        widget.details2,
                        fontSize: 13,
                        color: AppColors.wh,
                      ),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    locationController.dispose();
    super.dispose();
  }
}