import 'package:flutter/material.dart';

Widget buttonStyleB(
    {text = "Fazer login", required Function ontap, invertColor = false}) {
  Color color = const Color(0xffF4F4F7);
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
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1), // cor da sombra
          spreadRadius: 0, // quanto a sombra se espalha
          blurRadius: 4, // nível de borrão
          offset: const Offset(0, 3), // deslocamento da sombra (x, y)
        ),
      ], color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 20),
          const Image(image: AssetImage("images/iconGoogle.png")),
          const Spacer(flex: 80),
          Text(text, style: TextStyle(fontSize: 15, color: textColor)),
          const Spacer(flex: 100),
        ],
      ),
    ),
  );
}
