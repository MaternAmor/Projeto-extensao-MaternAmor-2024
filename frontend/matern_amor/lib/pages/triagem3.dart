import 'package:flutter/material.dart';
import 'package:matern_amor/components/bannerImage.dart';
import 'package:matern_amor/components/buttonTypeA.dart';
import 'package:matern_amor/components/indicadorPagina.dart';
import 'package:matern_amor/components/sectionTitle.dart';
import 'package:matern_amor/effects/SlideTransitionPage.dart';
import 'package:matern_amor/pages/login.dart';
import 'package:matern_amor/pages/triagem1.dart';

const TEXTO = """
Crie sua conta gratuitamente e faça parte de uma rede que ajuda milhares de famílias. Seja doando ou recebendo leite materno, você estará proporcionando saúde, cuidado e amor para bebês que mais precisam. Juntos, podemos nutrir gerações e fazer a diferença!
""";

class PageTriagem3 extends StatelessWidget {
  const PageTriagem3({super.key});

  @override
  Widget build(BuildContext context) {
    double margem = 70.0;
    double largura = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              bannerImage("images/banner3.png"),
              const SizedBox(height: 20),
              sectionTitle("Quase lá"),
              SizedBox(
                width: largura - margem,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    const Text(TEXTO),
                    const SizedBox(height: 50),
                    buttonTypeA(
                        text: "Vamos lá !!",
                        ontap: () {
                          Navigator.of(context).push(
                              SlideTransitionPage(page: const PageLogin()));
                        }),
                    const SizedBox(height: 25),
                    Center(child: indicadorPagina(3))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
