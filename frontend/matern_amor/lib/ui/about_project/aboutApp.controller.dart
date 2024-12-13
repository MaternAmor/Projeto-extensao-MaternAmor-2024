// home_mobile_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutAppController {
  final BuildContext context;

  AboutAppController(this.context);

  void goToHomePage() {
    Get.toNamed('/');
  }
}
