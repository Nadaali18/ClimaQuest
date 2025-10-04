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
  bool _isExpanded = false;
  bool _isStarted = false;
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // تحديد نص الزر ديناميكياً
    String buttonText = 'See Details';
    if (_isExpanded && _isStarted) {
      buttonText = 'Hide Details';
    } else if (_isExpanded && !_isStarted) {
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
                    backgroundColor: const Color.fromARGB(255, 246, 71, 176),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (!_isExpanded) {
                        _isExpanded = true;
                      } else if (_isExpanded && !_isStarted) {
                        _isStarted = true;
                      } else {
                        _isExpanded = false;
                        _isStarted = false;
                      }
                    });
                  },
                  child: CustomText(
                    buttonText,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            if (_isExpanded) ...[
              SizedBox(height: 16),
              if (!_isStarted) ...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Set Destination',
                      fontSize: 13,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: _locationController,
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
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 16),
              ],

              if (_isStarted) ...[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:CustomText(
                        'Destination: ${_locationController.text}',
                        fontSize: 16,
                        color: Colors.white,
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
                        color: Colors.white,
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
                        color: Colors.white,
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
    _locationController.dispose();
    super.dispose();
  }
}