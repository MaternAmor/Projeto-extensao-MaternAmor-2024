import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:matern_amor/messageAlerts/popupAlerts.dart';

class RequestDonationController extends GetxController {
  // Tela I
  var selectedOptionFirstChild = "".obs;
  var selectedOptionHowManyChildren = "".obs;
  var isShowFields = true.obs;

  // Tela II
  var hadPregnancyIllness = "".obs;
  var usesMedication = "".obs;
  var consumesAlcoholOrSmoke = "".obs;
  var hadBloodTransfusion = "".obs;
  var didPrenatalCare = "".obs;
  var babyWasInNeonatology = "".obs;

  // Controladores para detalhes das condições na Tela II
  var illnessDetailsController = TextEditingController();
  var medicationDetailsController = TextEditingController();

  // Controladores para campos da Tela I
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

  List<String> getEmptyFieldsTelaI() {
    List<String> emptyFields = [];

    if (controllerCeep.text.isEmpty) emptyFields.add("* CEP");
    if (controllerCidade.text.isEmpty) emptyFields.add("* Cidade");
    if (controllerBairro.text.isEmpty) emptyFields.add("* Bairro");
    if (controllerRua.text.isEmpty) emptyFields.add("* Rua");
    if (controllerComplemento.text.isEmpty) emptyFields.add("* Complemento");
    if (selectedOptionFirstChild.value.isEmpty)
      emptyFields.add("* Campo 'seu primeiro filho'");

    return emptyFields;
  }

  List<String> getEmptyFieldsTelaII() {
    List<String> emptyFields = [];

    if (hadPregnancyIllness.value.isEmpty) {
      emptyFields.add("* Você teve alguma doença durante a gestação");
    }
    if (usesMedication.value.isEmpty) {
      emptyFields.add("* Faz uso de alguma medicação");
    }
    if (consumesAlcoholOrSmoke.value.isEmpty) {
      emptyFields.add("* Fuma, consome bebidas alcoólicas");
    }
    if (hadBloodTransfusion.value.isEmpty) {
      emptyFields.add("* Fez transfusão de sangue");
    }
    if (didPrenatalCare.value.isEmpty) {
      emptyFields.add("* Realizou o pré-natal");
    }
    if (babyWasInNeonatology.value.isEmpty) {
      emptyFields.add("* bebê ficou internado na neonatologia");
    }

    if (hadPregnancyIllness.value == "Sim" &&
        illnessDetailsController.text.isEmpty) {
      emptyFields.add("* Detalhes da doença na gestação");
    }
    if (usesMedication.value == "Sim" &&
        medicationDetailsController.text.isEmpty) {
      emptyFields.add("* Detalhes das medicações");
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

  void validateAndNavigateToNextPage() {
    // List<String> emptyFields = getEmptyFieldsTelaI();
    // if (emptyFields.isNotEmpty) {
    //   showValidationError(emptyFields);
    // } else {
    //   nextPageII();
    // }
    nextPageII();
  }

  void validateAndConfirmDonation() {
    List<String> emptyFields = getEmptyFieldsTelaII();
    if (emptyFields.isNotEmpty) {
      showValidationError(emptyFields);
    } else {
      int bottle = int.parse(controllerQuantidade.text);
      confirmDonation(bottle);
    }
  }

  void nextPageII() {
    Get.toNamed("/requestDonationPageII");
  }
}
