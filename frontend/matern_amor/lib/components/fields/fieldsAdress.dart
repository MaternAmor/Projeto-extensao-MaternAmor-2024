import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:matern_amor/services/truncate_text.service.dart';

Widget showFieldsAdress(
    {String ceep = "6664-0001",
    String complemento = "ao lado da farmacia",
    String bairro = "parque verde",
    String rua = "Augusto montenegro",
    String cidade = "Belém",
    isShow = true,
    required List<Widget> children,
    required Function ontap}) {
  return Column(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Endereço:",
          style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(.8)),
        ),
      ),
      const SizedBox(height: 8),
      isShow
          ? Container()
          : Column(
              children: children,
            ),
      !isShow
          ? Container()
          : Container(
              height: 140,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black.withOpacity(.8)),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Endereço salvo",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(.7)),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 5,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: AutoSizeText(
                            "CEP : ${truncateText(ceep, 9)}\n"
                            "Cidade: ${truncateText(cidade, 20)}\n"
                            "Bairro: ${truncateText(bairro, 20)}\n"
                            "Rua: ${truncateText(rua, 40)}\n"
                            "Complemento: ${truncateText(complemento, 25)}",
                            style:
                                TextStyle(color: Colors.black.withOpacity(.5)),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      const SizedBox(height: 10),
      InkWell(
        onTap: () => ontap(),
        child: Row(
          children: [
            Icon(isShow ? Icons.edit_document : Icons.save_outlined),
            const SizedBox(width: 10),
            Text(
              isShow ? "Abrir edição de endereço" : "Fechar edição de endereço",
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    ],
  );
}
