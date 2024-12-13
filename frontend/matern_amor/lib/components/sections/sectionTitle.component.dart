import 'package:flutter/material.dart';

//========================================
// Widget sectionTitle: Define um widget chamado sectionTitle, que é responsável por criar um título de seção centralizado com um estilo de texto específico.
// Text: Exibe o conteúdo de text, que é o argumento passado à função.
//========================================

Widget sectionTitle(text) {
  return Center(
      child: Text(
    text,
    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  ));
}
