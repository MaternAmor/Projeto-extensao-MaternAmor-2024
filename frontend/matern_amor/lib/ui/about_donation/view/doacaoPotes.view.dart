// doacao_potes_view.dart
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:matern_amor/ui/about_donation/aboutDonation.controller.dart';
import 'package:matern_amor/components/component.dart';

const String potesInfoText = """
Os potes que podem ser doados são aqueles feitos de vidro e que possuem uma tampa plástica rosqueável.
""";

class DoacaoPotesMobile extends StatefulWidget {
  const DoacaoPotesMobile({super.key});

  @override
  State<DoacaoPotesMobile> createState() => _DoacaoPotesMobileState();
}

class _DoacaoPotesMobileState extends State<DoacaoPotesMobile> {
  late AboutDonationController controller;

  @override
  void initState() {
    super.initState();
    controller = AboutDonationController(context);
  }

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double wlargura = largura > 500 ? 500 : largura;
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
                  width: wlargura,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Center(
                          child: AutoSizeText(
                            "Doação de potes",
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: "KiteOne",
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const AutoSizeText(potesInfoText),
                        const SizedBox(height: 5),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            "✅ Tampa plástica:",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Image(
                          image: AssetImage('images/pote-de-Vidro-1.png.png'),
                          height: 100,
                        ),
                        const SizedBox(height: 15),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: AutoSizeText(
                            "❌ Tampa metálica:",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Spacer(flex: 100),
                            Image(
                              image: AssetImage('images/pote-de-Vidro-2.png'),
                              height: 100,
                            ),
                            Spacer(flex: 100),
                            AutoSizeText(
                              "Metal é contra \nindicado devido\n a oxidação do aço.",
                            ),
                            Spacer(flex: 100),
                          ],
                        ),
                        const SizedBox(height: 40),
                        buttonTypeD(
                          text: "Continue",
                          invertColor: true,
                          ontap: controller.onContinueToDonationPotes,
                          disableGoogleIcon: true,
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
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
