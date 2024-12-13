// settings_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SettingsController extends GetxController {
  final nomeController = TextEditingController();
  final telefoneController = TextEditingController();
  final senhaController = TextEditingController();
  final cepController = TextEditingController();
  final ruaController = TextEditingController();
  final bairroController = TextEditingController();
  final cidadeController = TextEditingController();
  final complementoController = TextEditingController();
  final idadeController = TextEditingController();

  // Máscaras para o telefone e CEP
  final maskTelefoneFormatter = MaskTextInputFormatter(mask: '(##) #####-####');
  final maskCepFormatter = MaskTextInputFormatter(mask: '#####-###');

  // Simulação de fetch de dados do perfil
  Future<void> fetchUserProfile() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users/1'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        nomeController.text = data['name'];
        telefoneController.text = "(91) 91234-4567"; // Exemplo fictício
        senhaController.text = "password123"; // Exemplo fictício
        cepController.text = "66000-000"; // Exemplo fictício
        ruaController.text = data['address']['street'];
        bairroController.text = data['address']['suite'];
        cidadeController.text = data['address']['city'];
        complementoController.text = "Apt 101"; // Exemplo fictício
        idadeController.text = "30"; // Exemplo fictício
      } else {
        showQuickAlert("Erro", "Falha ao buscar os dados do perfil.");
      }
    } catch (e) {
      showQuickAlert("Erro", "Ocorreu um erro ao buscar os dados do perfil.");
    }
  }

  void showQuickAlert(String title, String message) {
    QuickAlert.show(
      context: Get.context!,
      type: QuickAlertType.error,
      title: title,
      text: message,
      confirmBtnText: 'OK',
    );
  }

  void onSaveProfile() {
    List<String> emptyFields = _getEmptyFields();
    if (emptyFields.isNotEmpty) {
      showValidationError(emptyFields);
      return;
    }

    QuickAlert.show(
      context: Get.context!,
      type: QuickAlertType.success,
      title: 'Perfil Atualizado',
      text: 'Seu perfil foi atualizado com sucesso.',
      confirmBtnText: 'OK',
    );
  }

  List<String> _getEmptyFields() {
    List<String> emptyFields = [];

    if (nomeController.text.isEmpty) emptyFields.add("* Nome Completo");
    if (telefoneController.text.isEmpty) emptyFields.add("* Telefone");
    if (senhaController.text.isEmpty) emptyFields.add("* Senha");
    if (cepController.text.isEmpty) emptyFields.add("* CEP");
    if (ruaController.text.isEmpty) emptyFields.add("* Rua");
    if (bairroController.text.isEmpty) emptyFields.add("* Bairro");
    if (cidadeController.text.isEmpty) emptyFields.add("* Cidade");
    if (idadeController.text.isEmpty) emptyFields.add("* Idade");

    return emptyFields;
  }

  void showValidationError(List<String> emptyFields) {
    QuickAlert.show(
      context: Get.context!,
      type: QuickAlertType.error,
      title: 'Campos obrigatórios',
      text:
          'Por favor, preencha os seguintes campos antes de continuar:\n\n${emptyFields.join("\n")}',
      confirmBtnText: 'OK',
      onConfirmBtnTap: () => Get.back(),
    );
  }

  void onBack() {
    Get.back();
  }

  @override
  void onClose() {
    // Dispose dos controladores ao encerrar o controlador
    nomeController.dispose();
    telefoneController.dispose();
    senhaController.dispose();
    cepController.dispose();
    ruaController.dispose();
    bairroController.dispose();
    cidadeController.dispose();
    complementoController.dispose();
    idadeController.dispose();
    super.onClose();
  }
}
