import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:matern_amor/messageAlerts/popupAlerts.dart';
import 'package:matern_amor/ui/bottle_donation/bottleDonation.controller.dart';
import 'package:matern_amor/ui/requestDonation/requestDonation.controller.dart';
import 'package:matern_amor/components/component.dart';

class RequestDonationIIMobile extends GetView<RequestDonationController> {
  const RequestDonationIIMobile({super.key});

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
          body: Column(
            children: [
              header(),
              progressIndicator(step: [true, true, false]),
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: GetBuilder<BottleDonationController>(
                      init: BottleDonationController()
                        ..fetchDataAdressUserController(),
                      builder: (_) {
                        return Obx(() => Column(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: margem),
                                  width: wlargura,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      const SizedBox(height: 20),
                                      const Center(
                                          child: AutoSizeText(
                                              "Solicitar doação",
                                              style: TextStyle(fontSize: 22))),
                                      const SizedBox(height: 10),
                                      selectionsRadios(
                                          controller: controller,
                                          text:
                                              "Você teve alguma doença durante a gestação *",
                                          list: ["Sim", "Não"],
                                          groupValue: controller
                                              .hadPregnancyIllness.value,
                                          onChanged: (value) {
                                            controller.hadPregnancyIllness
                                                .value = value;
                                          }),
                                      const SizedBox(height: 20),
                                      if (controller
                                              .hadPregnancyIllness.value ==
                                          "Sim")
                                        textfieldSection(
                                          keyboardType: TextInputType.text,
                                          controller: controller
                                              .illnessDetailsController,
                                          icon: Icons.rate_review,
                                          hintText: "Digite sua resposta aqui",
                                          title: "Qual doença *",
                                        ),
                                      if (controller
                                              .hadPregnancyIllness.value ==
                                          "Sim")
                                        const SizedBox(height: 20),
                                      selectionsRadios(
                                          controller: controller,
                                          text: "Faz uso de alguma medicação *",
                                          list: ["Sim", "Não"],
                                          groupValue:
                                              controller.usesMedication.value,
                                          onChanged: (value) {
                                            controller.usesMedication.value =
                                                value;
                                          }),
                                      const SizedBox(height: 20),
                                      if (controller.usesMedication.value ==
                                          "Sim")
                                        textfieldSection(
                                          keyboardType: TextInputType.text,
                                          controller: controller
                                              .medicationDetailsController,
                                          icon: Icons.rate_review,
                                          hintText: "Digite sua resposta aqui",
                                          title: "Quais medicações *",
                                        ),
                                      if (controller.usesMedication.value ==
                                          "Sim")
                                        const SizedBox(height: 20),
                                      selectionsRadios(
                                          controller: controller,
                                          text:
                                              "Fuma, consome bebidas alcoólicas *",
                                          list: ["Sim", "Não"],
                                          groupValue: controller
                                              .consumesAlcoholOrSmoke.value,
                                          onChanged: (value) {
                                            controller.consumesAlcoholOrSmoke
                                                .value = value;
                                          }),
                                      const SizedBox(height: 20),
                                      selectionsRadios(
                                          controller: controller,
                                          text: "Fez transfusão de sangue *",
                                          list: ["Sim", "Não"],
                                          groupValue: controller
                                              .hadBloodTransfusion.value,
                                          onChanged: (value) {
                                            controller.hadBloodTransfusion
                                                .value = value;
                                          }),
                                      const SizedBox(height: 20),
                                      selectionsRadios(
                                          controller: controller,
                                          text: "Realizou o pré-natal *",
                                          list: ["Sim", "Não"],
                                          groupValue:
                                              controller.didPrenatalCare.value,
                                          onChanged: (value) {
                                            controller.didPrenatalCare.value =
                                                value;
                                          }),
                                      const SizedBox(height: 20),
                                      selectionsRadios(
                                          controller: controller,
                                          text:
                                              "O bebê ficou internado na neonatologia *",
                                          list: ["Sim", "Não"],
                                          groupValue: controller
                                              .babyWasInNeonatology.value,
                                          onChanged: (value) {
                                            controller.babyWasInNeonatology
                                                .value = value;
                                          }),
                                      const SizedBox(height: 40),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: buttonTypeD(
                                          disableGoogleIcon: true,
                                          text: "Próxima etapa",
                                          invertColor: true,
                                          ontap: () {
                                            controller
                                                .validateAndConfirmDonation();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 30),
                                footer()
                              ],
                            ));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
