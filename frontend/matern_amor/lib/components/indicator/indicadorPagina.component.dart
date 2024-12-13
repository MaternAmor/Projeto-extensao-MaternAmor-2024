import 'package:flutter/material.dart';

//==================================
// indicadorPagina(id): função que define um conjunto de indicadores de página, onde o parametro "id" determina qual indicador deve ser destacado
// SizedBox= usado comoo um contêiner que pode ser exapndido ou restrito. Neste caso, não está especificado um tamanho, então ele apenas contém os widgets internos
// Row= esse widget é utilizado para dispor os filhos (os indicadores de página) horizontalmente
//==================================

Widget indicadorPagina(id) {
  return SizedBox(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xff5056C9).withOpacity(id == 1 ? 1 : .2)),
        ),
        const SizedBox(width: 9),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xff5056C9).withOpacity(id == 2 ? 1 : .2)),
        ),
        const SizedBox(width: 9),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xff5056C9).withOpacity(id == 3 ? 1 : .2)),
        ),
      ],
    ),
  );
}
