import 'package:flutter/material.dart';
import 'package:matern_amor/components/buttonStyleB.dart';
import 'package:matern_amor/components/customHeader.dart';
import 'package:matern_amor/components/sectionTitleTypeA.dart';
import 'package:matern_amor/components/textfieldSection.dart';
import 'package:matern_amor/effects/SlideTransitionPage.dart';
import 'package:matern_amor/pages/login.dart';

const TEXTO = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus hendrerit lectus dui, eu convallis ex hendrerit pharetra. Nunc   
""";

class PageCadastro extends StatefulWidget {
  const PageCadastro({super.key});

  @override
  State<PageCadastro> createState() => _PageCadastroState();
}

class _PageCadastroState extends State<PageCadastro> {
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
                        icon: Icons.account_box,
                        title: "Nome"),
                    textfieldSection(
                        keyboardType: TextInputType.name,
                        controller: controllerEmail,
                        icon: Icons.email,
                        title: "Email"),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 200,
                        child: textfieldSection(
                            keyboardType: TextInputType.number,
                            isNumeric: true,
                            controller: controllerEmail,
                            title: "Idade"),
                      ),
                    ),
                    textfieldSection(
                        keyboardType: TextInputType.name,
                        controller: controllerPassword,
                        icon: Icons.key,
                        obscureText: true,
                        title: "Senha"),
                    const SizedBox(height: 5),
                    buttonStyleB(
                        text: "Fazer cadastro",
                        ontap: () {
                          Navigator.of(context).push(
                              SlideTransitionPage(page: const PageLogin()));
                        },
                        invertColor: true),
                    const SizedBox(height: 15),
                    buttonStyleB(
                        text: "Fazer login",
                        ontap: () {
                          Navigator.of(context).pop();
                        }),
                    const SizedBox(height: 50)
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
