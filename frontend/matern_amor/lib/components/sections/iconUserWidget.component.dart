import 'package:flutter/material.dart';

//================================
// iconUserWidget():essa função define um widget que será chamado iconUserWidget, e sempre cria o mesmo ícone de usuário em um formato circular
// center widget= é um widget que centraliza seu filho dentro do espaço disponível. Neste caso, ele centraliza o Container interno dentro do Container externo
// ===============================
Widget iconUserWidget() {
  return Container(
      margin: const EdgeInsets.only(left: 30),
      height: 120,
      width: 120,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: Colors.transparent),
      child: Center(
          child: Container(
              height: 110,
              width: 110,
              decoration: const BoxDecoration(
                  color: Color(0xff4568DC), shape: BoxShape.circle),
              child: const Icon(
                Icons.account_circle,
                size: 110,
                color: Colors.white,
              ))));
}
// Iconi de Usuario Com fundo azul
