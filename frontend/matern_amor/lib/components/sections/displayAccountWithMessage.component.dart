import 'package:flutter/material.dart';

//===================================
// displayAccountWithMessage= é usado para exibir uma mensagem de saudação personalizada com um nome de usuário
// Parâmetro name= define o nome que será exibido na mensagem
// Column= organiza os seus filhos (widgets internos) em uma direção vertical (um abaixo do outro)
// Align= usado para alinhar seu filho (neste caso, o widget Text) em uma posição específica dentro do layout pai
// ==================================
Widget displayAccountWithMessage({name = "Maria"}) {
  return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Olá, $name",
        style: const TextStyle(fontSize: 25, color: Colors.white),
      ),
    ),
    const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Seja bem vinda",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
        ))
  ]);
}
