// doacao_leite_materno_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutDonationController {
  final BuildContext context;

  AboutDonationController(this.context);

  void onContinueToDonationPotes() {
    Get.toNamed('/doacao-potes');
  }

  void onContinueToDonationLeiteMaterno() {
    Get.toNamed('/requestDonationPageI');
  }
}
