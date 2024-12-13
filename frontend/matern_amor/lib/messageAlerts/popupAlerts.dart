import 'package:get/get.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:flutter/material.dart';

void showLoginAlertIslogin() {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.confirm,
    title: 'Login Necessário',
    text: 'Você precisa estar logado para adicionar itens ao carrinho.',
    showCancelBtn: true,
    cancelBtnText: 'Cancelar',
    confirmBtnText: 'Fazer Login',
    onConfirmBtnTap: () {
      Get.back();
      Get.toNamed('/login'); // Redireciona para a tela de login
    },
  );
}

void showLoginAlertIsCreateLogin() {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.success,
    title: 'Conta criada com sucesso',
    text: 'Olá, seja bem-vindo(a) ao App MaternAmor',
    showCancelBtn: false,
    confirmBtnText: 'Ir para início',
    barrierDismissible: false,
    onConfirmBtnTap: () {
      Get.back();
      Get.offNamed('/');
    },
  );
}

void showLoginAlertIsloginCheck() {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.confirm,
    title: 'Login Necessário',
    text: 'Você precisa estar logado para acessar a página de carrinho.',
    showCancelBtn: true,
    cancelBtnText: 'Ir para Início',
    confirmBtnText: 'Fazer Login',
    barrierDismissible: false,
    onConfirmBtnTap: () {
      Get.back();
      Get.toNamed('/login');
    },
    onCancelBtnTap: () {
      Get.back();
      Get.toNamed('/');
    },
  );
}

void showLoginAlertExpiredSession() {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.confirm,
    title: 'Login Expirado',
    text: 'Realize o login novamente para voltar às atividades.',
    showCancelBtn: true,
    cancelBtnText: 'Ir para Início',
    confirmBtnText: 'Fazer Login',
    barrierDismissible: false,
    onConfirmBtnTap: () {
      Get.back();
      Get.toNamed('/login');
    },
    onCancelBtnTap: () {
      Get.back();
      Get.toNamed('/');
    },
  );
}

void showOrderSolicitedI({required Function ontap}) {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.info,
    title: 'Solicitação Status',
    text:
        'Boa notícia! Como você está doando mais de 10 potes, nossa equipe entrará em contato para agendar a coleta.\n\nVocê confirma a doação?',
    textAlignment: TextAlign.justify,
    showCancelBtn: true,
    cancelBtnText: 'Cancelar',
    confirmBtnText: 'Confirmar',
    barrierDismissible: false,
    onConfirmBtnTap: () {
      Get.back();
      ontap();
      Get.toNamed('/');
    },
    onCancelBtnTap: () {
      Get.back();
    },
  );
}

void showOrderSolicitedII({required Function ontap}) {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.info,
    title: 'Solicitação Status',
    text:
        'Boa notícia! Temos vários postos para receber sua doação. Para concluir, entregue os potes em um de nossos postos.\n\nVocê confirma a doação?',
    textAlignment: TextAlign.justify,
    showCancelBtn: true,
    cancelBtnText: 'Cancelar',
    confirmBtnText: 'Confirmar',
    barrierDismissible: false,
    onConfirmBtnTap: () {
      Get.back();
      ontap();
      Get.toNamed('/');
    },
    onCancelBtnTap: () {
      Get.back();
    },
  );
}

void showIsAlertTheCartIsEmpty() {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.info,
    title: 'Carrinho Vazio',
    text:
        'Visite nossa página inicial e comece adicionando itens ao carrinho :)',
    confirmBtnText: 'Ir para Loja',
    barrierDismissible: false,
    onConfirmBtnTap: () {
      Get.back();
      Get.toNamed('/');
    },
  );
}

void showIsAlertTheCartHasBuyIsEmpty() {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.info,
    title: 'Você ainda não fez compras',
    text:
        'Visite nossa página inicial e comece adicionando itens ao carrinho :)',
    confirmBtnText: 'Ir para Loja',
    barrierDismissible: false,
    onConfirmBtnTap: () {
      Get.back();
      Get.toNamed('/');
    },
  );
}

void showIsAlertTheCartIsEmptyHasBuy() {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.info,
    title: 'Você ainda não fez nenhuma compra',
    text:
        'Visite nossa página inicial e comece adicionando itens ao carrinho :)',
    confirmBtnText: 'Ir para Loja',
    barrierDismissible: false,
    onConfirmBtnTap: () {
      Get.back();
      Get.toNamed('/');
    },
  );
}

void showValidationError(List<String> emptyFields) {
  QuickAlert.show(
    width: Get.width > 700 ? 500 : Get.width,
    context: Get.context!,
    type: QuickAlertType.error,
    title: 'Campos Obrigatórios',
    text:
        'Por favor, preencha os seguintes campos antes de concluir a doação:\n\n${emptyFields.join("\n")}',
    textAlignment: TextAlign.justify,
    confirmBtnText: 'OK',
    onConfirmBtnTap: () {
      Get.back();
    },
  );
}
