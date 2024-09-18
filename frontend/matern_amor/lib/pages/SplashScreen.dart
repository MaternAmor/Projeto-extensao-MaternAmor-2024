import 'package:flutter/material.dart';
import 'package:matern_amor/effects/SlideTransitionPage.dart';
import 'package:matern_amor/pages/triagem1.dart';

const TEXTO = """
Juntos, salvando vidas com o apoio do Corpo de Bombeiros
""";

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
      Navigator.of(context)
          .pushReplacement(SlideTransitionPage(page: const PageTriagem1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff4568DC), Color(0xffB06AB3)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: largura - 100,
                child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Image(image: AssetImage("images/logo.png")),
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
    );
  }
}
