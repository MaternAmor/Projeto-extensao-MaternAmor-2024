import 'package:flutter/material.dart';

Widget bannerImage(image) {
  return Container(
    height: 250,
    width: double.infinity,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fitWidth)),
  );
}
