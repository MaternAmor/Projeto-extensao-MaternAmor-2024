import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matern_amor/ui/onboarding/onboarding.controller.dart';
import 'package:matern_amor/components/component.dart';

class OnboardingOneMobile extends GetView<OnboardingController> {
  const OnboardingOneMobile({super.key});

  @override
  Widget build(BuildContext context) {
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
                        Container(
                            width: 150,
                            height: 150,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "images/logo_bombeiros.png")))),
                        const SizedBox(height: 10),
                        const Text("MarternAmor",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontFamily: "KiteOne"))
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
                          "Bem-Vindo ao\nMaternAmor !",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            width: 300,
                            child: Text(
                              controller.TEXTO_ONBOARDINGI,
                              textAlign: TextAlign.center,
                            )),
                        indicadorPaginaOnboarding(index: 0),
                        const Spacer(flex: 100),
                        buttonNext(onTap: () {
                          Get.toNamed('/onboarding/2');
                        }),
                        const SizedBox(height: 20),
                        const Spacer(flex: 100),
                      ],
                    ),
                  ))
            ],
          ),
        )));
  }
}
