import 'package:flutter/material.dart';
import 'package:get/get.dart';

const TEXTO = """
Juntos, salvando vidas com o apoio do Corpo de Bombeiros
""";

class SplashScreenMobile extends StatefulWidget {
  @override
  _SplashScreenMobileState createState() => _SplashScreenMobileState();
}

class _SplashScreenMobileState extends State<SplashScreenMobile> {
  // SqfliteHelper dbHelper = SqfliteHelper();
  List userData = [];
  @override
  void initState() {
    super.initState();
    // getAllLogin(dbHelper: dbHelper).then((data) {
    //   setState(() {
    //     userData = data;
    //   });
    // });
    // Adiciona um atraso de 3 segundos
    Future.delayed(const Duration(seconds: 4), () {
      // Navega para a próxima tela após 3 segundos
      // if (userData.isNotEmpty) {
      //   Navigator.of(context)
      //       .pushReplacement(SlideTransitionPage(page: PageInicio()));
      // } else {
      //   Navigator.of(context)
      //       .pushReplacement(SlideTransitionPage(page: PageInit()));
      // }
      Get.offNamed('/onboarding/1');
    });
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Container(
      color: const Color(0xff8F94FB).withOpacity(.5),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff4568DC), Color(0xffB06AB3)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: largura - 100,
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 50),
                          Image(image: AssetImage("images/logo_bombeiros.png")),
                          SizedBox(height: 15),
                          Text(
                            "MarternAmor",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontFamily: "KiteOne"),
                          ),
                          SizedBox(height: 40),
                          Center(
                              child: SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ))),
                          SizedBox(height: 50),
                        ])),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
