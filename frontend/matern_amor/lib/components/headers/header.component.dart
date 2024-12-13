import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget header({bool settings = false, BuildContext? context}) {
  return Container(
    height: 80,
    width: double.infinity,
    color: const Color(0xff8F94FB),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 70),
          const Expanded(
              flex: 100,
              child: Row(children: [
                Image(
                  image: AssetImage("images/logo.png"),
                  width: 45,
                  height: 45,
                ),
                SizedBox(width: 8),
                Text(
                  "MarternAmor",
                  style: TextStyle(
                      fontSize: 20, color: Colors.white, fontFamily: "KiteOne"),
                )
              ])),
          Expanded(
              flex: 50,
              child: Align(
                alignment: const Alignment(0, 0),
                child: IconButton(
                    onPressed: settings
                        ? () {
                            if (context != null) {}
                            Get.toNamed('/settings');
                          }
                        : () {},
                    icon: Icon(
                      Icons.settings,
                      size: 40,
                      color: settings ? Colors.white : Colors.transparent,
                    )),
              ))
        ],
      ),
    ),
  );
}
