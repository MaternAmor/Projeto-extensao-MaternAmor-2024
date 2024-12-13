import 'package:flutter/material.dart';

//==========================================
//bannerImage: é usada para criar um widget que exibe uma imagem em formato de banner, ocupando toda a largura da tela
//Container: é usado para aplicar margens, paddings, e outros ajustes.
//BoxFit.fitWidth: ajusta a imagem para preencher a largura do Container sem alterar a proporção original da imagem.
//==========================================
Widget bannerImage(image) {
  return Container(
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fitWidth)),
  );
}
