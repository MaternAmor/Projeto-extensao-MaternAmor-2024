// home_mobile_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matern_amor/ui/home/home.controller.dart';
import 'package:matern_amor/components/component.dart';

class HomeMobile extends GetView<HomeController> {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = Get.width;
    double wlargura = largura > 500 ? 500 : largura;
    double margem = 50.0;

    return Container(
      color: const Color(0xff8F94FB).withOpacity(.5),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                header(settings: true, context: context),
                SizedBox(
                  width: wlargura,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: margem),
                    width: wlargura,
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        ImageCarousel(
                          height: largura > 450 ? 200 : 120,
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              buttonTypeC(
                                "Doação\nde leite",
                                width: (wlargura / 2) - margem - 5,
                                ontap: controller.goToDonateMilk,
                                image: "images/Gotas.png",
                                center: false,
                              ),
                              const SizedBox(width: 10),
                              buttonTypeC(
                                "Doação\nde potes",
                                width: (wlargura / 2) - margem - 5,
                                ontap: controller.goToDonateJars,
                                image: "images/Pote.png",
                                center: false,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 100,
                          child: buttonTypeC(
                            "Receber doação\nde leite",
                            ontap: () {},
                            image: "images/extract.png",
                            center: true,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 100,
                          child: buttonTypeC(
                            "Saiba mais\nsobre o app",
                            ontap: controller.goToLearnAboutApp,
                            image: "images/point.png",
                            center: true,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
