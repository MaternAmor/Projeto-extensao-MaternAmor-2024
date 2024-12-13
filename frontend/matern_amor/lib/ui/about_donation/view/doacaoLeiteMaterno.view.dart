// doacao_leite_materno_view.dart
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:matern_amor/ui/about_donation/aboutDonation.controller.dart';
import 'package:matern_amor/components/component.dart';

const TEXTO = """
Abaixo, você encontrará um tutorial elaborado pelos Bombeiros da Vida, que ensina como realizar a extração do leite de forma correta.   
""";

const TEXTO2 = """
1° Passo: Lave as mãos, higienize o mamilo com água mineral ou filtrada e use uma máscara para não \n
2° Passo: Despreze as primeiras gotas e separe um recipiente esterilizado \n
3° Passo: Faça massagem ao redor do peito todo para fluidificar o leite. \n
4° Passo:  Para ordenhar, pegue nas extremidades da aréola, empurre para o tórax, aperte e solte.
""";

class DoacaoLeiteMaternoMobile extends StatefulWidget {
  const DoacaoLeiteMaternoMobile({super.key});

  @override
  State<DoacaoLeiteMaternoMobile> createState() =>
      _DoacaoLeiteMaternoMobileState();
}

class _DoacaoLeiteMaternoMobileState extends State<DoacaoLeiteMaternoMobile> {
  late AboutDonationController controller;

  @override
  void initState() {
    super.initState();
    controller = AboutDonationController(context);
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: margem),
                        width: largura,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            const Center(
                              child: AutoSizeText(
                                "Como fazer extração",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "KiteOne",
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            const AutoSizeText(TEXTO),
                            // Container(
                            //   height: 140,
                            //   width: largura - margem,
                            //   decoration: BoxDecoration(
                            //     color: Colors.green,
                            //     borderRadius: BorderRadius.circular(10),
                            //   ),
                            //   child: const YouTubeVideoPlayer(
                            //     videoUrl:
                            //         "https://www.youtube.com/watch?v=IXql2CTftxw",
                            //     autoPlay: false,
                            //     mute: false,
                            //   ),
                            // ),
                            const SizedBox(height: 15),
                            const AutoSizeText(TEXTO2),
                            const SizedBox(height: 15),
                            buttonTypeD(
                              text: "Continue",
                              invertColor: true,
                              ontap:
                                  controller.onContinueToDonationLeiteMaterno,
                              disableGoogleIcon: true,
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
