// settings_mobile_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:matern_amor/ui/settings/settings.controller.dart';
import 'package:matern_amor/components/component.dart';

class SettingsMobile extends GetView<SettingsController> {
  const SettingsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double largura = Get.width; //obtem a largura total da tela
    double wlargura = largura > 500
        ? 500
        : largura; //define um limite máximo de pixels em tela
    double margem = 50.0; //define uma margem de pixels nas laterais

    return Container(
      color: const Color(0xff8F94FB).withOpacity(.5),
      child: SafeArea(
        //garante que o conteúdo não fique oculto por barras de status ou bordas da tela.
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            //tornar o conteúdo rolável.
            child: Column(
              children: [
                header(),
                SizedBox(
                  width: wlargura,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: margem),
                    width: wlargura,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Icon(
                          Icons.account_circle_rounded,
                          size: 150,
                          color: Color(0xff8F94FB),
                        ),
                        const SizedBox(height: 20),
                        textfieldSection(
                          keyboardType: TextInputType.text,
                          controller: controller.nomeController,
                          icon: Icons.account_box_outlined,
                          hintText: 'Maria Example',
                          title: "Nome Completo",
                        ),
                        const SizedBox(height: 10),
                        textfieldSection(
                          keyboardType: TextInputType.phone,
                          controller: controller.telefoneController,
                          inputFormatters: [controller.maskTelefoneFormatter],
                          icon: Icons.phone,
                          hintText: '(91) 91234-4567',
                          title: "Telefone",
                        ),
                        const SizedBox(height: 10),
                        textfieldSection(
                          keyboardType: TextInputType.number,
                          controller: controller.idadeController,
                          icon: Icons.cake,
                          hintText: 'Ex.: 30',
                          title: "Idade",
                        ),
                        const SizedBox(height: 10),
                        textfieldSection(
                          keyboardType: TextInputType.number,
                          controller: controller.cepController,
                          inputFormatters: [controller.maskCepFormatter],
                          icon: Icons.location_on,
                          hintText: 'Ex.: 66000-000',
                          title: "CEP",
                        ),
                        const SizedBox(height: 10),
                        textfieldSection(
                          keyboardType: TextInputType.text,
                          controller: controller.ruaController,
                          icon: Icons.home,
                          hintText: 'Ex.: Rua Principal',
                          title: "Rua",
                        ),
                        const SizedBox(height: 10),
                        textfieldSection(
                          keyboardType: TextInputType.text,
                          controller: controller.bairroController,
                          icon: Icons.location_city,
                          hintText: 'Ex.: Centro',
                          title: "Bairro",
                        ),
                        const SizedBox(height: 10),
                        textfieldSection(
                          keyboardType: TextInputType.text,
                          controller: controller.cidadeController,
                          icon: Icons.location_city,
                          hintText: 'Ex.: São Paulo',
                          title: "Cidade",
                        ),
                        const SizedBox(height: 10),
                        textfieldSection(
                          keyboardType: TextInputType.text,
                          controller: controller.complementoController,
                          icon: Icons.location_on_outlined,
                          hintText: 'Ex.: Apt 101',
                          title: "Complemento",
                        ),
                        const SizedBox(height: 10),
                        textfieldSection(
                          keyboardType: TextInputType.visiblePassword,
                          controller: controller.senhaController,
                          icon: Icons.password,
                          obscureText: true,
                          hintText: 'ExampleSenha@1234',
                          title: "Senha",
                        ),
                        const SizedBox(height: 30),
                        buttonTypeB(
                          disableGoogleIcon: true,
                          text: "Salvar Alterações",
                          invertColor: true,
                          ontap: controller.onSaveProfile,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
