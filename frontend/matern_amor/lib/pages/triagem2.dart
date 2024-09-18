import 'package:flutter/material.dart';
import 'package:matern_amor/components/bannerImage.dart';
import 'package:matern_amor/components/buttonTypeA.dart';
import 'package:matern_amor/components/indicadorPagina.dart';
import 'package:matern_amor/components/sectionTitle.dart';
import 'package:matern_amor/effects/SlideTransitionPage.dart';
import 'package:matern_amor/pages/triagem3.dart';

const TEXTO = """
Em poucos cliques, você pode ajudar a transformar a vida de bebês!
Facilitando a doação de leite materno e potes, criando uma rede de apoio para mães e bebês que precisam de cuidado e carinho.
""";

class PageTriagem2 extends StatelessWidget {
  const PageTriagem2({super.key});

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
              bannerImage("images/banner2.png"),
              const SizedBox(height: 20),
              sectionTitle("Doe potes de leite"),
              SizedBox(
                width: largura - margem,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    const Text(TEXTO),
                    const SizedBox(height: 50),
                    buttonTypeA(
                        text: "Proximo",
                        ontap: () {
                          Navigator.of(context).push(
                              SlideTransitionPage(page: const PageTriagem3()));
                        }),
                    const SizedBox(height: 25),
                    Center(child: indicadorPagina(2))
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
