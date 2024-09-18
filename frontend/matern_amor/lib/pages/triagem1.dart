import 'package:flutter/material.dart';
import 'package:matern_amor/components/bannerImage.dart';
import 'package:matern_amor/components/buttonTypeA.dart';
import 'package:matern_amor/components/indicadorPagina.dart';
import 'package:matern_amor/components/sectionTitle.dart';
import 'package:matern_amor/effects/SlideTransitionPage.dart';
import 'package:matern_amor/pages/triagem2.dart';

const TEXTO = """
Participe de um projeto transformador que facilita a doação de potes e leite materno. Tudo de forma 100% gratuita para doadores e recebedores. Um gesto simples, mas capaz de mudar o futuro de muitos bebês.
Doe amor, doe vida!
""";

class PageTriagem1 extends StatelessWidget {
  const PageTriagem1({super.key});

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
              bannerImage("images/banner1.png"),
              const SizedBox(height: 20),
              SizedBox(
                width: largura - margem,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    sectionTitle("Seja Bem-Vindo "),
                    const SizedBox(height: 20),
                    const Text(TEXTO),
                    const SizedBox(height: 50),
                    buttonTypeA(
                        text: "Proximo",
                        ontap: () {
                          Navigator.of(context).push(
                              SlideTransitionPage(page: const PageTriagem2()));
                        }),
                    const SizedBox(height: 25),
                    Center(child: indicadorPagina(1))
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
