import 'package:clima_quest/core/helpers/constants.dart';
import 'package:clima_quest/core/routes/routes.dart';
import 'package:clima_quest/core/widgets/custom_text.dart';
import 'package:clima_quest/core/widgets/gradient_button.dart';
import 'package:clima_quest/presentation/onboarding/widgets/dot.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  
  final PageController controller = PageController();
  int currentPage = 0;

  
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            flex: 4,
            child: PageView.builder(
              controller: controller,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    onboardingData[index]["image"]!,
                    height: 300,
                    width: 300,
                  ),
                  const SizedBox(height: 30),
                  CustomText(
                    onboardingData[index]["text"]!,
                    textdirection: TextAlign.center,
                    fontSize: 24,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingData.length,
                    (index) => Dot(index: index,currentPage: currentPage,),
                  ),
                ),
                const Spacer(),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: GradientButton(
                 height: 40,
                 text: currentPage == onboardingData.length - 1 
                 ? "Start Exploring"
                 : "Next",
                onPressed: () {
                  if (currentPage == onboardingData.length -1 ) {
                  context.go(Routes.signUp);
                } else {
                  controller.nextPage(
                   duration: const Duration(milliseconds: 500),
                   curve: Curves.ease,
              );
            }
          },
       ),
     ),
                const SizedBox(height: 40),
              ],
            ),
          )
        ],
    );
  }
}
