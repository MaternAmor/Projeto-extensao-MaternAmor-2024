import 'package:flutter/material.dart';
import 'package:get/get.dart';

progressIndicator({required List step}) {
  return SizedBox(
      height: 8,
      width: Get.width,
      child: Row(
        children: [
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: step[0]
                          ? Colors.green
                          : Colors.grey.withOpacity(.5)))),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: step[1]
                          ? Colors.green
                          : Colors.grey.withOpacity(.5)))),
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: step[2]
                          ? Colors.green
                          : Colors.grey.withOpacity(.5)))),
        ],
      ));
}
