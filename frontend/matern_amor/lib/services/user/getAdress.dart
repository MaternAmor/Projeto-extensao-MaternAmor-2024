import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

Future<void> fetchDataAdressUserController(setState,
    {required TextEditingController controllerCeep,
    required TextEditingController controllerCidade,
    required TextEditingController controllerBairro,
    required TextEditingController controllerRua,
    required TextEditingController controllerComplemento,
    required TextEditingController controllerQuantidade}) async {
  // Simula uma chamada para uma API fake
  const url = 'https://jsonplaceholder.typicode.com/users/1';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    // Parsea a resposta JSON
    final data = json.decode(response.body);

    setState(() {
      controllerCeep.text = data['address']['zipcode'] ?? '';
      controllerCidade.text = data['address']['city'] ?? '';
      controllerBairro.text = data['address']['suite'] ?? '';
      controllerRua.text = data['address']['street'] ?? '';
      controllerComplemento.text = data['address']['geo']['lat'] ?? '';
      controllerQuantidade.text = '';
    });
  }
}
