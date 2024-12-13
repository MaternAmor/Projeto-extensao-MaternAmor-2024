// bottle_donation_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:matern_amor/messageAlerts/popupAlerts.dart';

class BottleDonationController extends GetxController {
  var isShowFields = true.obs;

  final controllerCeep = TextEditingController();
  final controllerCidade = TextEditingController();
  final controllerBairro = TextEditingController();
  final controllerRua = TextEditingController();
  final controllerComplemento = TextEditingController();
  final controllerQuantidade = TextEditingController();

  final maskCEPFormatter = MaskTextInputFormatter(mask: '#####-###');

  void SwitchValueIsShowFields() {
    isShowFields.value = !isShowFields.value;
  }

  List<String> getEmptyFields() {
    List<String> emptyFields = [];

    if (controllerCeep.text.isEmpty) emptyFields.add("* CEP");
    if (controllerCidade.text.isEmpty) emptyFields.add("* Cidade");
    if (controllerBairro.text.isEmpty) emptyFields.add("* Bairro");
    if (controllerRua.text.isEmpty) emptyFields.add("* Rua");
    if (controllerComplemento.text.isEmpty) emptyFields.add("* Complemento");
    if (controllerQuantidade.text.isEmpty) {
      emptyFields.add("* Quantidade de potes");
    }

    return emptyFields;
  }

  Future<void> fetchDataAdressUserController() async {
    controllerCeep.text = "66640-000";
    controllerCidade.text = "Belém";
    controllerBairro.text = "Parque Verde";
    controllerRua.text = "Augusto Montenegro";
    controllerComplemento.text = "Ao lado da farmácia";
    controllerQuantidade.text = "";
    update();
  }

  void confirmDonation(int bottle) {
    if (bottle >= 10) {
      showOrderSolicitedI(ontap: () {});
    } else {
      showOrderSolicitedII(ontap: () {});
    }
  }

  @override
  void onClose() {
    // Dispose dos controladores ao encerrar o controlador
    controllerCeep.dispose();
    controllerCidade.dispose();
    controllerBairro.dispose();
    controllerRua.dispose();
    controllerComplemento.dispose();
    controllerQuantidade.dispose();
    super.onClose();
  }
}
