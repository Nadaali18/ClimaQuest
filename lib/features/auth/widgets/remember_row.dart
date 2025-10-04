import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class RememberRow extends StatefulWidget {
  const RememberRow({super.key});

  @override
  State<RememberRow> createState() => _RememberRowState();
}

class _RememberRowState extends State<RememberRow> {
  bool? value=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Checkbox(value: value, onChanged: (tap){setState(() {
            value = tap;
          });}),
          SizedBox(width: 4,),
          CustomText('Remember me',color: Colors.white,),
        ],
      ),
    );
  }
}