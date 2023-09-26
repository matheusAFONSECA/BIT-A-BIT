import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyAPIScreen extends StatefulWidget {
  @override
  _MyAPIScreenState createState() => _MyAPIScreenState();
}

class _MyAPIScreenState extends State<MyAPIScreen> {
  String _inputText = '';
  String _responseText = '';

  Future<void> _sendDataToAPI() async {
    // final url =
    //     "http://10.0.21.236:8080/tabela"; // -> para quando rodar no emulador

    final url =
        "http://127.0.0.1:5000/tabela"; // -> para quando rodar no PC (web)

    // final url =
    //     "https://matheusafonseca.pythonanywhere.com/simplifica"; // para rodar no celular

    // quando for usar o "simplifica" mudar para "data"
    // quando for usar o "simptabela" mudar para "mapa"
    // quando for usar a "tabela" mudar para "exp"
    final response = await http.post(Uri.parse(url), body: {"exp": _inputText});

    if (response.statusCode == 200) {
      // A solicitação foi bem-sucedida
      final responseData = response.body;
      setState(() {
        _responseText = responseData;
      });
    } else {
      // A solicitação falhou
      print('Erro na solicitação: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de Integração de API'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Digite uma string',
              ),
            ),
            ElevatedButton(
              onPressed: _sendDataToAPI,
              child: const Text('Enviar para API'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Resposta da API:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(_responseText),
          ],
        ),
      ),
    );
  }
}
