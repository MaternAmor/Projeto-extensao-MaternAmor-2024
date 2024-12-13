// login_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:matern_amor/messageAlerts/alerts.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    if (validateFields() || true) {
      // Faça o login aqui
      // Por exemplo, navegue para a próxima tela
      Get.offNamed('/');
    }
  }

  void goToLoginPage() {
    Get.offNamed('/login');
  }

  void goToRegister() {
    Get.toNamed('/register');
  }

  void loginWithGoogle() {
    Get.toNamed('/login');
  }

  void goToPageResetPassword() {
    Get.toNamed('/login');
  }

  bool validateFields() {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      showErrorAlert();

      return false;
    }
    return true;
  }
}
