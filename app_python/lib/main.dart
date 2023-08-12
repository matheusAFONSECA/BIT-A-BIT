import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200], // Cor de fundo salmão
      appBar: AppBar(
        title: Text('Conexão teste com o Flask'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[700], // Cor do texto cinza escura
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            'Texto Exemplo',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white, // Cor do texto branco
            ),
          ),
        ),
      ),
    );
  }
}
