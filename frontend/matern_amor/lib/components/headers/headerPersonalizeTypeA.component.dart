import 'package:flutter/material.dart';

//===================================
//Widget headerPersonalizeTypeA: é usada para criar um widget de cabeçalho personalizado, exibindo um texto e uma imagem.
//Row: cria um componente que exibe os elementos (imagem e texto) em uma linha.
//Center: ajusta a posição do texto verticalmente
//Container: é usado para aplicar margens, paddings, e outros ajustes.
//===================================

Widget headerPersonalizeTypeA({text = "Doe potes\ndoe vida"}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Image(
          image: AssetImage("images/logo.png"), height: 100, width: 100),
      const SizedBox(width: 10),
      Container(
        height: 75,
        width: 13,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
      ),
      const SizedBox(width: 20),
      Container(
        margin: const EdgeInsets.only(top: 20),
        child: Text(
          text,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      )
    ],
  );
}
