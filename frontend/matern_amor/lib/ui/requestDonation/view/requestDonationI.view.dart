import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:matern_amor/messageAlerts/popupAlerts.dart';
import 'package:matern_amor/ui/bottle_donation/bottleDonation.controller.dart';
import 'package:matern_amor/components/component.dart';
import 'package:matern_amor/ui/requestDonation/requestDonation.controller.dart';

class RequestDonationIMobile extends GetView<RequestDonationController> {
  const RequestDonationIMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = Get.width;
    double wlargura = largura > 500 ? 500 : largura;
    double margem = 50.0;

    RxBool needsScroll = false.obs;

    return Container(
      color: const Color(0xff8F94FB).withOpacity(.5),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              header(),
              progressIndicator(step: [true, false, false]),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      needsScroll.value =
                          constraints.maxHeight < context.size!.height;
                    });

                    return NotificationListener<ScrollNotification>(
                      onNotification: (scrollNotification) {
                        // Atualiza se a rolagem é necessária ao interagir
                        if (scrollNotification.metrics.maxScrollExtent > 0) {
                          needsScroll.value = true;
                        }
                        return false;
                      },
                      child: SingleChildScrollView(
                        child: GetBuilder<BottleDonationController>(
                          init: BottleDonationController()
                            ..fetchDataAdressUserController(),
                          builder: (_) {
                            return Column(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: margem),
                                  width: wlargura,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20),
                                      const Center(
                                          child: AutoSizeText(
                                              "Solicitar doação",
                                              style: TextStyle(fontSize: 22))),
                                      const SizedBox(height: 10),
                                      Obx(() {
                                        return showFieldsAdress(
                                            bairro: controller
                                                .controllerBairro.text,
                                            ceep:
                                                controller.controllerCeep.text,
                                            cidade: controller
                                                .controllerCidade.text,
                                            complemento: controller
                                                .controllerComplemento.text,
                                            rua: controller.controllerRua.text,
                                            isShow:
                                                controller.isShowFields.value,
                                            ontap: () {
                                              controller
                                                  .SwitchValueIsShowFields();
                                            },
                                            children: [
                                              textfieldSection(
                                                keyboardType:
                                                    TextInputType.number,
                                                controller:
                                                    controller.controllerCeep,
                                                inputFormatters: [
                                                  controller.maskCEPFormatter
                                                ],
                                                icon: Icons.location_on,
                                                hintText: "Ex.: 00000-000",
                                                maxLength: 9,
                                                title: "CEP *",
                                              ),
                                              const SizedBox(height: 10),
                                              textfieldSection(
                                                keyboardType:
                                                    TextInputType.text,
                                                controller:
                                                    controller.controllerCidade,
                                                icon: Icons.location_city,
                                                hintText: "Ex.: Belém",
                                                title: "Cidade *",
                                              ),
                                              const SizedBox(height: 10),
                                              textfieldSection(
                                                keyboardType:
                                                    TextInputType.text,
                                                controller:
                                                    controller.controllerBairro,
                                                icon: Icons.location_city,
                                                hintText: "Ex.: parque verde",
                                                title: "Bairro *",
                                              ),
                                              const SizedBox(height: 10),
                                              textfieldSection(
                                                keyboardType:
                                                    TextInputType.text,
                                                controller:
                                                    controller.controllerRua,
                                                icon: Icons.home,
                                                hintText:
                                                    "Ex.: Augusto montenegro",
                                                title: "Rua *",
                                              ),
                                              const SizedBox(height: 10),
                                              textfieldSection(
                                                  keyboardType:
                                                      TextInputType.text,
                                                  controller: controller
                                                      .controllerComplemento,
                                                  icon: Icons
                                                      .location_on_outlined,
                                                  hintText:
                                                      "Ex.: Bloco A, casa 203",
                                                  title: "Complemento *")
                                            ]);
                                      }),
                                      const SizedBox(height: 10),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text("É o seu primeiro filho?",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black
                                                      .withOpacity(.8)))),
                                      Obx(() {
                                        return Column(
                                          children:
                                              ["Sim", "Não"].map((option) {
                                            return Align(
                                              alignment: Alignment.centerLeft,
                                              child: SizedBox(
                                                height: 30,
                                                width: 200,
                                                child: RadioListTile<String>(
                                                  title: Text(option),
                                                  value: option,
                                                  groupValue: controller
                                                      .selectedOptionFirstChild
                                                      .value,
                                                  onChanged: (value) {
                                                    if (value != null) {
                                                      controller
                                                          .selectedOptionFirstChild
                                                          .value = value;
                                                    }
                                                  },
                                                  visualDensity:
                                                      VisualDensity.compact,
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        );
                                      }),
                                      const SizedBox(height: 20),
                                      Obx(() => controller
                                                  .selectedOptionFirstChild
                                                  .value ==
                                              "Não"
                                          ? Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                  "Quantos filhos você tem?",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black
                                                          .withOpacity(.8))))
                                          : Container()),
                                      Obx(() => controller
                                                  .selectedOptionFirstChild
                                                  .value ==
                                              "Não"
                                          ? Column(
                                              children: [
                                                "Somente um",
                                                "2 filhos",
                                                "3 filhos ou mais"
                                              ].map((option) {
                                                return Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SizedBox(
                                                    height: 30,
                                                    width: 200,
                                                    child:
                                                        RadioListTile<String>(
                                                      title: Text(option),
                                                      value: option,
                                                      groupValue: controller
                                                          .selectedOptionHowManyChildren
                                                          .value,
                                                      onChanged: (value) {
                                                        if (value != null) {
                                                          controller
                                                              .selectedOptionHowManyChildren
                                                              .value = value;
                                                        }
                                                      },
                                                      visualDensity:
                                                          VisualDensity.compact,
                                                      contentPadding:
                                                          EdgeInsets.zero,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            )
                                          : Container()),
                                      const SizedBox(height: 40),
                                      Obx(() => needsScroll.value
                                          ? Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 30),
                                              child: buttonTypeD(
                                                disableGoogleIcon: true,
                                                text: "Próxima etapa",
                                                invertColor: true,
                                                ontap: () {
                                                  controller
                                                      .validateAndNavigateToNextPage();
                                                },
                                              ),
                                            )
                                          : Container()),
                                    ],
                                  ),
                                ),
                                !needsScroll.value ? Container() : footer()
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
              Obx(() => !needsScroll.value
                  ? Column(
                      children: [
                        Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 50.0),
                            child: buttonTypeD(
                                disableGoogleIcon: true,
                                text: "Próxima etapa",
                                invertColor: true,
                                ontap: () {
                                  controller.validateAndNavigateToNextPage();
                                })),
                        const SizedBox(height: 20),
                        footer()
                      ],
                    )
                  : Container()),
            ],
          ),
        ),
      ),
    );
  }
}
