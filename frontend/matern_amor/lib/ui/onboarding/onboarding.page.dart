import 'package:flutter/material.dart';
import 'package:matern_amor/ui/onboarding/view/onboardingOne.view.dart';
import 'package:matern_amor/ui/onboarding/view/onboardingThree.view.dart';
import 'package:matern_amor/ui/onboarding/view/onboardingTwo.view.dart';

class OnboardingPage extends StatelessWidget {
  int? page;
  OnboardingPage({super.key, this.page=0});

  @override
  Widget build(BuildContext context) {
    switch (page) {
      case 0:
        return const OnboardingOneMobile();
      case 1:
        return const OnboardingTwoMobile(); 
      case 2:
        return const OnboardingThreeMobile(); 
      default:
        return const OnboardingOneMobile();
    }
  }
}
