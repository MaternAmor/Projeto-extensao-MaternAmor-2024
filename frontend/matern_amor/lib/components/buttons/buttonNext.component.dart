import 'package:flutter/material.dart';

// ==========================================================
// Função recebe os seguintes parametro de entrada
// activeFinnaly : Opcional, pre-setado como false
// Se activeFinnaly for false, o botão exibirá "Proximo".
// Se activeFinnaly for true, ele exibirá "Vamos la!!".
// onTap : função de clique
// Ele é usado para alterar o texto exibido no botão.
// ==========================================================
Widget buttonNext({required Function onTap, activeFinnaly = false}) {
  return InkWell(
    onTap: () {
      onTap();
    },
    child: Container(
      height: 60,
      width: 300,
      decoration: BoxDecoration(
          color: const Color(0xff8F94FB),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color(
                  0x9917899C), // Cor com opacidade 60% (99 em hexadecimal)
              offset: Offset(0, 10), // Posição X: 0, Y: 10
              blurRadius: 20, // Valor do blur
              spreadRadius: -5, // Spread -5
            )
          ]),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 100),
            Text(!activeFinnaly ? "Proximo" : "Vamos la!!",
                style: const TextStyle(color: Colors.white, fontSize: 16)),
            const Spacer(flex: 10),
            const Icon(
              Icons.east,
              size: 40,
              color: Colors.white,
            ),
            const Spacer(flex: 80),
          ],
        ),
      ),
    ),
  );
}
