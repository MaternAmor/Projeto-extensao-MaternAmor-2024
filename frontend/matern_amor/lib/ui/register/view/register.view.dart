// register_view.dart
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matern_amor/ui/register/register.controller.dart';
import 'package:matern_amor/components/component.dart';

const String projectDescription = """
Um projeto em parceria com os Bombeiros da Vida e a Santa Casa.
""";

class RegisterMobile extends GetView<RegisterController> {
  const RegisterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double margem = 70.0;
    double largura = Get.width;

    return Container(
      color: const Color(0xff8F94FB).withOpacity(.5),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const CustomHeader(),
                sectionTitleTypeA("MaternAmor"),
                SizedBox(
                  width: largura - margem,
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const AutoSizeText(projectDescription),
                      textfieldSection(
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.emailController,
                        icon: Icons.email,
                        hintText: "Ex.: example@gmail.com",
                        title: "Email",
                      ),
                      const SizedBox(height: 10),
                      textfieldSection(
                        keyboardType: TextInputType.phone,
                        controller: controller.telefoneController,
                        inputFormatters: [controller.maskTelefoneFormatter],
                        icon: Icons.call,
                        hintText: "(91) 91234-5678",
                        title: "Telefone",
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 200,
                          child: textfieldSection(
                            keyboardType: TextInputType.number,
                            controller: controller.idadeController,
                            hintText: "Ex.: 26",
                            title: "Idade",
                            isNumeric: true,
                          ),
                        ),
                      ),
                      textfieldSection(
                        keyboardType: TextInputType.visiblePassword,
                        controller: controller.passwordController,
                        icon: Icons.lock,
                        obscureText: true,
                        hintText: "Ex.: Senha@E123",
                        title: "Senha",
                      ),
                      const SizedBox(height: 15),
                      textfieldSection(
                        keyboardType: TextInputType.visiblePassword,
                        controller: controller.confirmPasswordController,
                        icon: Icons.lock,
                        obscureText: true,
                        hintText: "Ex.: Senha@E123",
                        title: "Confirme a Senha",
                      ),
                      const SizedBox(height: 20),
                      buttonTypeB(
                        disableGoogleIcon: true,
                        text: "Fazer cadastro",
                        ontap: controller.onRegister,
                        invertColor: true,
                      ),
                      const SizedBox(height: 15),
                      buttonTypeB(
                        disableBorder: false,
                        disableGoogleIcon: true,
                        text: "Voltar",
                        ontap: controller.onBack,
                      ),
                      const SizedBox(height: 50),
                    ],
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
