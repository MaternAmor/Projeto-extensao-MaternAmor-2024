import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matern_amor/ui/onboarding/onboarding.controller.dart';
import 'package:matern_amor/components/component.dart';

class OnboardingTwoMobile extends GetView<OnboardingController> {
  const OnboardingTwoMobile({super.key});

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
                                            "images/banner4.png"))))),
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
                          "Ajude a salvar vidas com \ndoações",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            width: 300,
                            child: AutoSizeText(
                              controller.TEXTO_ONBOARDINGII,
                              textAlign: TextAlign.center,
                            )),
                        indicadorPaginaOnboarding(index: 1),
                        const Spacer(flex: 100),
                        buttonNext(onTap: () {
                          Get.toNamed('/onboarding/3');
                        }),
                        const Spacer(flex: 100),
                      ],
                    ),
                  ))
            ],
          ),
        )));
  }
}
