import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIT-A-BIT', // título da appBar
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // texto do botão que chama a lista de botões
  String textoOpcao = "Qual base deseja converter?";

  // booleano aux para mostrar/ocultar a lista de botões
  bool showButtonList = false;

  // list de String que vamos mostrar para cada botão
  List<String> buttonList = [
    'Binário',
    'Decimal',
    'Octal',
    'Hexadecimal',
  ];

  // var aux
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIT-A-BIT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // botão para mostrar a list de opções
            ElevatedButton(
              onPressed: () {
                // seta o que acontece com o estado da var booleana
                setState(() {
                  showButtonList = !showButtonList; // inverte o estado booleano
                });
              },
              child: Text(textoOpcao),
            ),
            if (showButtonList) // verifica se o botão que mostra as opções foi precionado
              Column(
                // mostra as opções de botões conforme a lista de botões
                children: buttonList.asMap().entries.map((entry) {
                  final int index = entry.key; // pega o id do List de botões
                  final String text = entry.value; // texto do List de botões

                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        textoOpcao =
                            text; // define o texto da opção selecionada
                        selectedIndex = index; // index da opção selecionada
                        showButtonList =
                            !showButtonList; // inverte o estado booleano
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        index == selectedIndex ? Colors.purple : Colors.grey,
                      ),
                    ),
                    child: Text(text),
                  );
                }).toList(),
              ),
          ],
        ),
      ),
    );
  }
}
