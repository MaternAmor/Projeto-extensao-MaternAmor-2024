// register_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:matern_amor/messageAlerts/popupAlerts.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class RegisterController extends GetxController {
  final emailController = TextEditingController();
  final telefoneController = TextEditingController();
  final idadeController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final maskTelefoneFormatter = MaskTextInputFormatter(mask: '(##) #####-####');

  void onRegister() {
    List<String> emptyFields = _getEmptyFields();
    if (emptyFields.isNotEmpty) {
      showValidationError(emptyFields);
      return;
    }

    if (!_isValidEmail(emailController.text)) {
      showQuickAlert(
        title: "Email inválido",
        text: "Por favor, insira um email válido.",
      );
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      showQuickAlert(
        title: "Erro: Senha e Confirmação",
        text: "As senhas não coincidem.",
      );
      return;
    }

    showLoginAlertIsCreateLogin();
  }

  void onBack() {
    Get.back();
  }

  bool _isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegExp.hasMatch(email);
  }

  List<String> _getEmptyFields() {
    List<String> emptyFields = [];

    if (emailController.text.isEmpty) emptyFields.add("* Email");
    if (telefoneController.text.isEmpty) emptyFields.add("* Telefone");
    if (idadeController.text.isEmpty) emptyFields.add("* Idade");
    if (passwordController.text.isEmpty) emptyFields.add("* Senha");
    if (confirmPasswordController.text.isEmpty) {
      emptyFields.add("* Confirme a Senha");
    }

    return emptyFields;
  }

  void showValidationError(List<String> emptyFields) {
    double width = Get.width;

    QuickAlert.show(
      width: width > 700 ? 500 : width,
      context: Get.context!,
      type: QuickAlertType.error,
      title: 'Campos obrigatórios',
      text:
          'Por favor, preencha os seguintes campos antes de concluir o cadastro:\n\n${emptyFields.join("\n")}',
      textAlignment: TextAlign.justify,
      confirmBtnText: 'OK',
      onConfirmBtnTap: () {
        Navigator.of(Get.context!, rootNavigator: true).pop();
      },
    );
  }

  void showQuickAlert({
    required String title,
    required String text,
  }) {
    QuickAlert.show(
      context: Get.context!,
      type: QuickAlertType.error,
      title: title,
      text: text,
      confirmBtnText: 'OK',
      onConfirmBtnTap: () {
        Navigator.of(Get.context!, rootNavigator: true).pop();
      },
    );
  }

  @override
  void onClose() {
    emailController.dispose();
    telefoneController.dispose();
    idadeController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
