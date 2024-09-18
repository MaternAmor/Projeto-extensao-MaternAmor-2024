import 'package:flutter/material.dart';

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
