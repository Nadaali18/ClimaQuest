import 'package:clima_quest/core/helpers/colors.dart';
import 'package:clima_quest/core/utils/select_date_time_fun.dart';
import 'package:flutter/material.dart';

class SmartDateTimeField extends StatefulWidget {
  final String label;
  final ValueChanged<DateTime> onDateTimeSelected;

  const SmartDateTimeField({
    super.key,
    required this.label,
    required this.onDateTimeSelected,
  });

  @override
  State<SmartDateTimeField> createState() => _SmartDateTimeFieldState();
}

class _SmartDateTimeFieldState extends State<SmartDateTimeField> {
  final TextEditingController controller = TextEditingController();
  DateTime? selectedDateTime;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: true,
      onTap: () async {
        await selectDateTime(
          context: context,
          controller: controller,
          onDateTimeSelected: (dateTime) {
            setState(() {
              selectedDateTime = dateTime;
            });
            widget.onDateTimeSelected(dateTime);
          },
        );
      },
      decoration: InputDecoration(
        hintText: 'Select Date and Time',
        hintStyle: const TextStyle(color: Colors.white70),
        labelText: widget.label,
        labelStyle: const TextStyle(color: Colors.white70),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: Colors.purple.withValues(alpha: 0.2),
        suffixIcon: Icon(Icons.date_range, color: AppColors.wh),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      style: TextStyle(color: AppColors.wh),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
