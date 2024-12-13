import 'package:flutter/material.dart';

//============================================
// ontap= Função de clique
// text= exibe o texto " Fazer Login "
// disableGoogleIcon= controla se o ícone do google será exibido ou não
// Se for true, o ícone do Google não aparece. Caso contrário, o ícone será exibido à esquerda do texto.
//============================================
Widget buttonTypeB({
  text = "Fazer login",
  required Function ontap,
  invertColor = false,
  disableGoogleIcon = false,
  disableBorder = true,
}) {
  Color color = Colors.white;
  Color textColor = Colors.black;
  if (invertColor) {
    textColor = Colors.white;
    color = const Color(0xff8F94FB);
  }
  return InkWell(
    onTap: () {
      ontap();
    },
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(.2), // Cor com opacidade 60% (99 em hexadecimal)
              offset: const Offset(0, 10), // Posição X: 0, Y: 10
              blurRadius: 10, // Valor do blur
              spreadRadius: -5, // Spread -5
            )
          ],
          color: color,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 2,
              color: disableBorder
                  ? Colors.transparent
                  : Colors.black.withOpacity(.3))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: disableGoogleIcon
            ? [
                const Spacer(flex: 100),
                Text(text,
                    style: TextStyle(
                        fontSize: 15,
                        color: textColor,
                        fontWeight: FontWeight.w600)),
                const Spacer(flex: 100),
              ]
            : [
                const Spacer(flex: 20),
                const Image(image: AssetImage("images/iconGoogle.png")),
                const Spacer(flex: 80),
                Text(text,
                    style: TextStyle(
                        fontSize: 15,
                        color: textColor,
                        fontWeight: FontWeight.w600)),
                const Spacer(flex: 100),
              ],
      ),
    ),
  );
}
