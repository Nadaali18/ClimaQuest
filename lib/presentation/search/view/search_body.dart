import 'dart:developer';
import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/core/widgets/gradient_button.dart';
import 'package:clima_quest/presentation/search/widgets/search_text_field.dart';
import 'package:clima_quest/presentation/search/widgets/smart_date_time_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 30,),
                 SizedBox(
                    height: 250,width: 250,
                    child: Image.asset('assets/images/search.png',fit:BoxFit.fill)),
                 SizedBox(height: 50),
                 SearchTextField(),
                 SizedBox(height: 30),
                 SmartDateTimeField(
                       label: "Choose Date & Time",
                       onDateTimeSelected: (dateTime) {
                       log("Selected: $dateTime");
                   },
               ),
                SizedBox(height: 50),
                GradientButton(text: 'Search', onPressed: ()=>context.go(Routes.navigation)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}