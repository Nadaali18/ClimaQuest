import 'package:flutter/material.dart';

class ProfileField extends StatelessWidget {
  final String label;
  final String value;
  final bool isEditing;
  final bool isDropdown;
  final List<String>? dropdownItems;
  final String? selectedItem;
  final void Function(String?)? onChanged;
  final VoidCallback onEdit;
  final TextEditingController? controller;

  const ProfileField({
    super.key,
    required this.label,
    required this.value,
    this.isEditing = false,
    this.isDropdown = false,
    this.dropdownItems,
    this.selectedItem,
    this.onChanged,
    required this.onEdit,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:  Colors.purple.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:  Colors.purple.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              if (!isDropdown && !isEditing)
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.purple, size: 20),
                  onPressed: onEdit,
                ),
            ],
          ),
          SizedBox(height: 8),
          
          if (isEditing && !isDropdown)
            TextField(
              controller: controller,
              style: TextStyle(color: Colors.white, fontSize: 16),
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            )
          else if (isDropdown)
            DropdownButton<String>(
              value: selectedItem,
              isExpanded: true,
              dropdownColor:  Colors.purple.withValues(alpha: 0.1),
              style: TextStyle(color: Colors.white, fontSize: 16),
              items: dropdownItems!
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ))
                  .toList(),
              onChanged: isEditing ? onChanged : null,
            )
          else
            Text(
              value,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
        ],
      ),
    );
  }
}