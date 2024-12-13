import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Para usar TextInputFormatter

//===================================
// Widget textfieldSection: cria uma seção de entrada de texto personalizada (campo de texto) em Flutter.
// Parametro keyboardType: O tipo de teclado a ser exibido (ex.: numérico, texto, email, etc.).
// SizedBox: Envolve a estrutura para garantir que o widget tenha um tamanho adequado.
// Campo de Texto (TextField): controller: O TextEditingController controla o texto digitado. Ele é essencial para recuperar o texto ou resetá-lo posteriormente.
//===================================

Widget textfieldSection(
    {IconData icon = Icons.account_box_outlined,
    isNumeric = false,
    List<TextInputFormatter>? inputFormatters,
    int? maxLength,
    required TextInputType keyboardType,
    bool obscureText = false,
    String title = "",
    String hintText = "",
    Function? onChanged,
    required TextEditingController controller}) {
  return SizedBox(
      child: Column(children: [
    Align(
        alignment: Alignment.centerLeft,
        child: Text(title,
            style:
                TextStyle(fontSize: 18, color: Colors.black.withOpacity(.8)))),
    const SizedBox(height: 8),
    TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        maxLength: maxLength ?? (isNumeric ? 3 : null),
        onChanged: (e) {
          if (onChanged != null) {
            onChanged(e);
          }
        },
        inputFormatters: inputFormatters ??
            (isNumeric
                ? [
                    FilteringTextInputFormatter.digitsOnly
                  ] // Permite apenas números
                : []), // Não aplica filtro se não for numérico
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(10))))
  ]));
}
