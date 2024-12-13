import 'package:flutter/material.dart';

Widget selectionsRadios(
    {required controller,
    required List list,
    required text,
    required String? groupValue,
    required Function onChanged}) {
  return Column(
    children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text(text,
              style: TextStyle(
                  fontSize: 18, color: Colors.black.withOpacity(.8)))),
      Column(
          children: list.map((option) {
        return Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            height: 30,
            width: 200,
            child: RadioListTile<String>(
              title: Text(option),
              value: option,
              groupValue: groupValue,
              onChanged: (value) {
                if (value != null) {
                  onChanged(value);
                }
              },
              visualDensity: VisualDensity.compact,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        );
      }).toList()),
    ],
  );
}
