import 'package:flutter/material.dart';
import 'package:clima_quest/core/helpers/colors.dart';

Future<void> selectDateTime({
  required BuildContext context,
  required TextEditingController controller,
  required Function(DateTime) onDateTimeSelected,
}) async {
  final DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2100),
    builder: (context, child) {
      return Theme(
        data: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.dark(
            primary: AppColors.buttonColor,
            onPrimary: AppColors.wh,
            surface: Colors.grey[800]!,
            onSurface: AppColors.wh,
          ),
          dialogTheme: DialogThemeData(backgroundColor: Colors.grey[900]),
        ),
        child: child!,
      );
    },
  );

  if (pickedDate != null) {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: AppColors.buttonColor,
              onPrimary: AppColors.wh,
              surface: Colors.grey[800]!,
              onSurface: AppColors.wh,
            ),
            dialogTheme: DialogThemeData(backgroundColor: Colors.grey[900]),
          ),
          child: child!,
        );
      },
    );

    if (pickedTime != null) {
      final selectedDateTime = DateTime(
        pickedDate.year,
        pickedDate.month,
        pickedDate.day,
        pickedTime.hour,
        pickedTime.minute,
      );

      controller.text =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year} ${pickedTime.format(context)}";

      onDateTimeSelected(selectedDateTime);
    }
  }
}
