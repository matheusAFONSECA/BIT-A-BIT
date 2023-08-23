import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Future<void> sendDataToAPI() async {
    final apiUrl = 'http://127.0.0.1:5000/';
    final data = {'key': 'value'}; // Dados que você quer enviar para a API

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      print('API Response: ${response.body}');
    } else {
      print('Failed to send data to API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter API Integration'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            sendDataToAPI(); // Chame a função aqui quando o botão for pressionado
          },
          child: Text('Enviar Dados para a API'),
        ),
      ),
    );
  }
}
