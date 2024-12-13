import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:matern_amor/ui/about_project/aboutApp.controller.dart';
import 'package:matern_amor/components/component.dart';

const TIME = """
Orientador:
Erminio Paixão

-> Equipes

Design: 
Gabryella Gonçalves
Hugo França
João Emannuel
João Vitor
Kaio Vieira
Pablo Silva
Rafael Rocha
Samuel Cristo 

Documentação:
Eduardo Felipe
Gabriel da Silva
Miguel Braga
Nilton Neto

Programação:
Alexsandro Fernandes
Anthony Cardoso
Guilherme Ferreira
Marcos Mesquita
Matheus Moraes
Stefany de Oliveira

""";

const TEXTO =
    """O MaternAmor foi desenvolvido com o objetivo de facilitar e incentivar a doação de leite materno, conectando mães doadoras a bancos de leite e pontos de coleta de forma rápida, segura e prática. Nosso aplicativo é mais que uma ferramenta, é uma rede de solidariedade dedicada ao bem-estar dos recém-nascidos.
""";
const TEXTO2 =
    """O MaternAmor foi pensado e desenvolvido pelos alunos do curso de Ciências da Compatação da Universidade da Amazônia (UNAMA) e o projeto Bombeiros da Vida, com o objetivo de melhorar o processo de doação de leite materno e aumentar os estoques dos bancos de leite.
""";

class AboutAppMobile extends StatefulWidget {
  const AboutAppMobile({super.key});

  @override
  State<AboutAppMobile> createState() => _AboutAppMobileState();
}

class _AboutAppMobileState extends State<AboutAppMobile> {
  late AboutAppController controller;

  @override
  void initState() {
    super.initState();
    controller = AboutAppController(context);
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double margem = 50.0;
    return Container(
      color: const Color(0xff8F94FB).withOpacity(.5),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              header(),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: margem),
                  width: largura,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Center(
                            child: AutoSizeText("Sobre o projeto",
                                style: TextStyle(
                                    fontSize: 22, fontFamily: "KiteOne"))),
                        const SizedBox(height: 15),
                        const Text(TEXTO),
                        const SizedBox(height: 5),
                        Container(
                            height: 140,
                            width: largura - margem,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                image: const DecorationImage(
                                    image: AssetImage("images/banner1.png"),
                                    fit: BoxFit.fitWidth),
                                borderRadius: BorderRadius.circular(10))),
                        const SizedBox(height: 10),
                        const Text(TEXTO2),
                        const SizedBox(height: 5),
                        Container(
                          height: 140,
                          width: largura - margem,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("images/banner2.png"),
                                  fit: BoxFit.fitWidth),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        const SizedBox(height: 15),
                        const Align(
                            alignment: Alignment.centerLeft, child: Text(TIME)),
                        buttonTypeD(
                            text: "Voltar",
                            invertColor: true,
                            ontap: controller.goToHomePage,
                            disableGoogleIcon: true),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
