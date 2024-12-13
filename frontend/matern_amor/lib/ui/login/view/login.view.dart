// login_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matern_amor/ui/login/login.controller.dart';
import 'package:matern_amor/components/component.dart';

const TEXTO = """
Um projeto em parceira com os Bombeiros da Vida e a Santa Casa.
""";

class LoginMobile extends GetView<LoginController> {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double margem = 70.0;
    double largura = Get.width;
    double wlargura = largura > 500 ? 500 : largura;
    return Container(
      color: const Color(0xff8F94FB).withOpacity(.5),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomHeader(),
                      sectionTitleTypeA("MaternAmor"),
                      SizedBox(
                        width: wlargura - margem,
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            const Text(
                              TEXTO,
                              textAlign: TextAlign.center,
                            ),
                            textfieldSection(
                              keyboardType: TextInputType.emailAddress,
                              controller: controller.emailController,
                              icon: Icons.email,
                              hintText: 'example@gmail.com',
                              title: "Email",
                            ),
                            const SizedBox(height: 10),
                            textfieldSection(
                              keyboardType: TextInputType.visiblePassword,
                              controller: controller.passwordController,
                              icon: Icons.lock,
                              hintText: 'senha',
                              title: "Senha",
                            ),
                            const SizedBox(height: 30),
                            buttonTypeB(
                              disableGoogleIcon: true,
                              text: "Entrar",
                              invertColor: true,
                              ontap: controller.login,
                            ),
                            const SizedBox(height: 15),
                            buttonTypeB(
                              disableBorder: false,
                              text: "Entrar com Google",
                              invertColor: false,
                              ontap: controller.loginWithGoogle,
                            ),
                            const SizedBox(height: 20),
                            Center(
                                child: TextButton(
                                    onPressed: controller.goToPageResetPassword,
                                    child: const Text(
                                      "Esqueceu a senha?",
                                      style: TextStyle(
                                          fontSize: 17,
                                          decoration: TextDecoration.underline),
                                    ))),
                            Center(
                                child: TextButton(
                                    onPressed: controller.goToRegister,
                                    child: const Text("Fazer cadastro",
                                        style: TextStyle(
                                            fontSize: 17,
                                            decoration:
                                                TextDecoration.underline)))),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                      // const SizedBox(height: 10),
                      // const Center(child: Text("")),
                      // const SizedBox(height: 50),
                      // footer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
