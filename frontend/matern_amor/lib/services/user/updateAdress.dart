import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<void> updateDataAdressUser(setState, context,
    {ceep, cidade, bairro, rua, complemento, quantidade}) async {
  // Simula uma chamada de atualização para a API
  const url = 'https://jsonplaceholder.typicode.com/users/1';
  final response = await http.post(
    Uri.parse(url),
    headers: {'Content-Type': 'application/json; charset=UTF-8'},
    body: json.encode({
      'ceep': ceep,
      'cidade': cidade,
      'bairro': bairro,
      'rua': rua,
      'complemento': complemento,
      'quantidade': quantidade,
    }),
  );

  // if (response.statusCode == 200 || response.statusCode == 201) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(content: Text('Dados atualizados com sucesso!')),
  //   );
  // } else {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(content: Text('Falha ao atualizar os dados')),
  //   );
  // }
}
