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
  TextEditingController controller = TextEditingController();
  DateTime? _selectedDateTime;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      readOnly: true,
      onTap: _selectDateTime,
      decoration: InputDecoration(
        hintText: 'Select Date and Time',
        hintStyle: TextStyle(color: Colors.white70),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
        fillColor: Colors.purple.withValues(alpha: 0.2),
        suffixIcon: Icon(Icons.date_range, color: Colors.white),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      style: TextStyle(color: Colors.white),
    );
  }

  Future<void> _selectDateTime() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark().copyWith(
            colorScheme: ColorScheme.dark(
              primary: Color.fromARGB(255, 246, 71, 176),
              onPrimary: Colors.white,
              surface: Colors.grey[800]!,
              onSurface: Colors.white,
            ),
            dialogTheme: DialogThemeData(backgroundColor:Colors.grey[900] ),
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
                primary: Color.fromARGB(255, 246, 71, 176),
                onPrimary: Colors.white,
                surface: Colors.grey[800]!,
                onSurface: Colors.white,
              ),
              dialogTheme: DialogThemeData(backgroundColor:Colors.grey[900] ),
            ),
            child: child!,
          );
        },
      );

      if (pickedTime != null) {
        setState(() {
          _selectedDateTime = DateTime(
            pickedDate.year,
            pickedDate.month,
            pickedDate.day,
            pickedTime.hour,
            pickedTime.minute,
          );
          controller.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year} ${pickedTime.format(context)}";
          widget.onDateTimeSelected(_selectedDateTime!);
        });
      }
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}