import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:matern_amor/messageAlerts/popupAlerts.dart';
import 'package:matern_amor/ui/bottle_donation/bottleDonation.controller.dart';
import 'package:matern_amor/components/component.dart';

const TEXTO = """
Informe seu endereço para registrar sua intenção de doar potes.
""";

class BottleDonationMobile extends GetView<BottleDonationController> {
  const BottleDonationMobile({super.key});

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
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: margem),
                  width: wlargura,
                  child: SingleChildScrollView(
                    child: GetBuilder<BottleDonationController>(
                      init: BottleDonationController()
                        ..fetchDataAdressUserController(),
                      builder: (_) {
                        return Column(
                          children: [
                            const SizedBox(height: 30),
                            const AutoSizeText(TEXTO),
                            Obx(() {
                              return showFieldsAdress(
                                bairro: controller.controllerBairro.text,
                                ceep: controller.controllerCeep.text,
                                cidade: controller.controllerCidade.text,
                                complemento:
                                    controller.controllerComplemento.text,
                                rua: controller.controllerRua.text,
                                isShow: controller.isShowFields.value,
                                ontap: () {
                                  controller.SwitchValueIsShowFields();
                                },
                                children: [
                                  textfieldSection(
                                    keyboardType: TextInputType.number,
                                    controller: controller.controllerCeep,
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
                                    keyboardType: TextInputType.text,
                                    controller: controller.controllerCidade,
                                    icon: Icons.location_city,
                                    hintText: "Ex.: Belém",
                                    title: "Cidade *",
                                  ),
                                  const SizedBox(height: 10),
                                  textfieldSection(
                                    keyboardType: TextInputType.text,
                                    controller: controller.controllerBairro,
                                    icon: Icons.location_city,
                                    hintText: "Ex.: parque verde",
                                    title: "Bairro *",
                                  ),
                                  const SizedBox(height: 10),
                                  textfieldSection(
                                    keyboardType: TextInputType.text,
                                    controller: controller.controllerRua,
                                    icon: Icons.home,
                                    hintText: "Ex.: Augusto montenegro",
                                    title: "Rua *",
                                  ),
                                  const SizedBox(height: 10),
                                  textfieldSection(
                                    keyboardType: TextInputType.text,
                                    controller:
                                        controller.controllerComplemento,
                                    icon: Icons.location_on_outlined,
                                    hintText: "Ex.: Bloco A, casa 203",
                                    title: "Complemento *",
                                  ),
                                ],
                              );
                            }),
                            const SizedBox(height: 10),
                            textfieldSection(
                              keyboardType: TextInputType.number,
                              controller: controller.controllerQuantidade,
                              icon: Icons.stacked_bar_chart,
                              hintText: "Ex.: 3",
                              title: "Quantos potes pretende doar *",
                            ),
                            const AutoSizeText(
                              "Doando 10 ou mais potes poderá receber visitação em seu domicilio para coleta.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(color: Color(0xff1F45EF)),
                            ),
                            const SizedBox(height: 30),
                            buttonTypeD(
                              disableGoogleIcon: true,
                              text: "Concluir Doação",
                              invertColor: true,
                              ontap: () {
                                List<String> emptyFields =
                                    controller.getEmptyFields();
                                if (emptyFields.isNotEmpty) {
                                  showValidationError(emptyFields);
                                  return;
                                }

                                int bottle = int.parse(
                                    controller.controllerQuantidade.text);
                                controller.confirmDonation(bottle);
                              },
                            ),
                            const SizedBox(height: 30),
                            const SizedBox(height: 100),
                          ],
                        );
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
