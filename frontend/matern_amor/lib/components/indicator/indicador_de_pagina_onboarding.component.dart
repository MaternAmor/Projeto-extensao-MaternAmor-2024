import 'package:flutter/material.dart';

//========================================
// indicadorPaginaOnboarding({index = 0}): essa função define um widget que exibe um indicador para a página para o onboarding
// Container para cada indicador: Cada Container representa um indicador de página. No total, são três containers, um para cada página do onboarding
// ========================================
Widget indicadorPaginaOnboarding({index = 0}) {
  return Center(
    child: SizedBox(
        height: 15,
        width: 100,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: index == 0 ? 40 : 25,
              decoration: BoxDecoration(
                  color: index == 0
                      ? const Color(0xff8F94FB)
                      : const Color.fromARGB(99, 143, 148, 251),
                  borderRadius: BorderRadius.circular(10))),
          Container(
              width: index == 1 ? 40 : 25,
              decoration: BoxDecoration(
                  color: index == 1
                      ? const Color(0xff8F94FB)
                      : const Color.fromARGB(99, 143, 148, 251),
                  borderRadius: BorderRadius.circular(10))),
          Container(
              width: index == 2 ? 40 : 25,
              decoration: BoxDecoration(
                  color: index == 2
                      ? const Color(0xff8F94FB)
                      : const Color.fromARGB(99, 143, 148, 251),
                  borderRadius: BorderRadius.circular(10))),
        ])),
  );
}
