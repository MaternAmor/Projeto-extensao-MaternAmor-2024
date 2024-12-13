import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

//=======================================
// ontap= Função de clique
// image: O caminho para a imagem que será exibida no lado direito do botão.
// center: Um booleano que ajusta o posicionamento do texto verticalmente.
// Se center for true, o texto será centralizado verticalmente
// Se center for false, ele será deslocado para baixo, com margem superior de 30 pixels.
// ======================================
Widget buttonTypeC(text,
    {width, required Function ontap, image, center = false}) {
  return InkWell(
    onTap: () {
      ontap();
    },
    child: Container(
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // cor da sombra
              spreadRadius: 0, // quanto a sombra se espalha
              blurRadius: 4, // nível de borrão
              offset: const Offset(0, 3), // deslocamento da sombra (x, y)
            ),
          ],
          color: const Color(0xff8F94FB),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: center ? 0 : 30, right: 10),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: AutoSizeText(text,
                  maxLines: 2,
                  maxFontSize: 25,
                  style: const TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(width: 5),
          Container(
            width: 40,
            height: 90,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          )
        ],
      ),
    ),
  );
}
