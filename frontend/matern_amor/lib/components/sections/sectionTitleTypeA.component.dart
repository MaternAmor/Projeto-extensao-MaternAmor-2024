import 'package:flutter/material.dart';

//===================================
// Widget sectionTitleTypeA: Define o widget sectionTitleTypeA, que cria um título de seção centralizado com um estilo de texto personalizado.
// Text: Exibe o conteúdo de text, que é o argumento passado para a função.
// fontFamily: "KiteOne": Aplica a fonte personalizada chamada KiteOne.
//===================================

Widget sectionTitleTypeA(text) {
  return Center(
      child: Text(
    text,
    style: const TextStyle(fontSize: 25, fontFamily: "KiteOne"),
  ));
}
