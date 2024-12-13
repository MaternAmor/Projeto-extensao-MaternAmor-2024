import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void alertSucessDelete() {
  Get.showSnackbar(
    const GetSnackBar(
      duration: Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(10),
      borderRadius: 10,
      messageText: AwesomeSnackbarContent(
        title: 'Cadastro deletado com sucesso',
        message: 'Tudo certo. Continue aproveitando o app!',
        contentType: ContentType.success,
      ),
    ),
  );
}

void alertSucessUpdate() {
  Get.showSnackbar(
    const GetSnackBar(
      duration: Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(10),
      borderRadius: 10,
      messageText: AwesomeSnackbarContent(
        title: 'Atualizado com sucesso',
        message:
            'Tudo certo, seu cadastro foi atualizado. Continue aproveitando o app!',
        contentType: ContentType.success,
      ),
    ),
  );
}

void alertSucess() {
  Get.showSnackbar(
    const GetSnackBar(
      duration: Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(10),
      borderRadius: 10,
      messageText: AwesomeSnackbarContent(
        title: 'Cadastrado com sucesso',
        message:
            'Tudo certo, seu cadastro foi um sucesso. Continue aproveitando o app!',
        contentType: ContentType.success,
      ),
    ),
  );
}

void alertFailField() {
  Get.showSnackbar(
    const GetSnackBar(
      duration: Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(10),
      borderRadius: 10,
      messageText: AwesomeSnackbarContent(
        title: 'Opps, algo errado',
        message: 'Falha, Verifique se campos estão preenchidos.',
        contentType: ContentType.failure,
      ),
    ),
  );
}

void showErrorAlert() {
  Get.showSnackbar(
    const GetSnackBar(
      duration: Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(10),
      borderRadius: 10,
      messageText: AwesomeSnackbarContent(
        title: 'Opps, algo errado',
        message: 'Falha, Verifique se campos estão preenchidos.',
        contentType: ContentType.failure,
      ),
    ),
  );
}
