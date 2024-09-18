import 'package:flutter/material.dart';
import 'package:matern_amor/components/buttonStyleB.dart';
import 'package:matern_amor/components/customHeader.dart';
import 'package:matern_amor/components/sectionTitleTypeA.dart';
import 'package:matern_amor/components/textfieldSection.dart';
import 'package:matern_amor/effects/SlideTransitionPage.dart';
import 'package:matern_amor/pages/cadastro.dart';

const TEXTO = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus hendrerit lectus dui, eu convallis ex hendrerit pharetra. Nunc   
""";

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

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
              const CustomHeader(),
              sectionTitleTypeA("MaternAmor"),
              SizedBox(
                  width: largura - margem,
                  child: Column(children: [
                    const SizedBox(height: 10),
                    const Text(TEXTO),
                    textfieldSection(
                        keyboardType: TextInputType.name,
                        controller: controllerEmail,
                        icon: Icons.email,
                        title: "Email"),
                    textfieldSection(
                        keyboardType: TextInputType.name,
                        controller: controllerPassword,
                        icon: Icons.key,
                        obscureText: true,
                        title: "Senha"),
                    const SizedBox(height: 5),
                    buttonStyleB(
                        text: "Fazer login",
                        ontap: () {
                          Navigator.of(context).push(
                              SlideTransitionPage(page: const PageLogin()));
                        }),
                    const SizedBox(height: 15),
                    buttonStyleB(
                        text: "Fazer cadastro",
                        ontap: () {
                          Navigator.of(context).push(
                              SlideTransitionPage(page: const PageCadastro()));
                        },
                        invertColor: true),
                    const SizedBox(height: 50)
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
