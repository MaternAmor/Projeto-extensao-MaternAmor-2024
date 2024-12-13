import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:matern_amor/ui/onboarding/onboarding.controller.dart';
import 'package:matern_amor/components/component.dart';

class OnboardingThreeMobile extends GetView<OnboardingController> {
  const OnboardingThreeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Container(
        color: const Color(0xff8F94FB).withOpacity(.5),
        child: SafeArea(
            child: Scaffold(
          body: Column(
            children: [
              Expanded(
                  flex: 100,
                  child: CustomPaint(
                    size: const Size(double.infinity, 200),
                    painter: InvertedCurvePainter(),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                width: largura > 250 ? 250 : largura,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "images/banner5.png"))))),
                        const SizedBox(height: 20)
                      ],
                    )),
                  )),
              Expanded(
                  flex: 80,
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 100),
                        const Text(
                          "Vamos juntos nessa\nmissão !!",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            width: 300,
                            child: Text(
                              controller.TEXTO_ONBOARDINGIII,
                              textAlign: TextAlign.center,
                            )),
                        indicadorPaginaOnboarding(index: 2),
                        const Spacer(flex: 100),
                        buttonNext(
                            onTap: () {
                              Get.offNamed('/login');
                            },
                            activeFinnaly: true),
                        const Spacer(flex: 100),
                      ],
                    ),
                  ))
            ],
          ),
        )));
  }
}
