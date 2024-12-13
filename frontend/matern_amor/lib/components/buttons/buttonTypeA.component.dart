import 'package:flutter/material.dart';

// ======================================================
//  Botão recebe os valores
//  text: string
//  ontap: Função de clique
//  variação de botão que pode ser declarado na interface façade
// ======================================================
Widget buttonTypeA({text = '', required Function ontap}) {
  return InkWell(
    onTap: () {
      ontap();
    },
    child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          color: const Color(0xffD3E1FC),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // cor da sombra
              spreadRadius: 0, // quanto a sombra se espalha
              blurRadius: 4, // nível de borrão
              offset: const Offset(0, 3), // deslocamento da sombra (x, y)
            ),
          ],
        ),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
              color: Color(0xff8F94FB), fontWeight: FontWeight.bold),
        ))),
  );
}
