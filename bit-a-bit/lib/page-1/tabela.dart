import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/tabela2var.dart';
import 'package:myapp/page-1/tabela3var.dart';
import 'package:myapp/page-1/tabela4var.dart';

class Tabela extends StatefulWidget {
  const Tabela({super.key});

  @override
  _Tabela createState() => _Tabela();
}

String expressao = '';
List<String> variaveis = [];

class _Tabela extends State<Tabela> {
  int numVar = 0;

  @override
  Widget build(BuildContext context) {
    double baseWidth = MediaQuery.of(context).size.width;
    double baseHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff114b5f),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Cabeçalho
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: Stack(
                    children: [
                      Image.asset('assets/page-1/images/ci.png'),
                      Positioned(
                        top: 0.058 * baseHeight,
                        left: 0.07 * baseWidth,
                        child: Text('Tabela da Verdade',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                              fontSize: 22,
                              color: Color(0xffffffff),
                            ))),
                      )
                    ],
                  ),
                ),
                //Final cabeçalho
                //Expressão a obter a tabela verdade
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0.1 * baseWidth, 0.03 * baseHeight, 0.1 * baseWidth, 0),
                  child: Column(
                    children: [
                      Text(
                          'Entre com a expressão que deseja obter a tabela da verdade:',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                            fontSize: 22,
                            color: Color(0xffffffff),
                          ))),
                      SizedBox(
                        width: baseWidth * 0.8,
                        height: baseHeight * 0.08,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Color(0xff000000), width: 2),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Color(0xff000000), width: 2),
                            ),
                            filled: true,
                            fillColor: Color(0xff88d498),
                          ),
                          maxLines: null,
                          onChanged: (String exp) {
                            setState(() {
                              expressao = exp;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //Botões inferiores
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.04 * baseHeight),
                        child: TextButton(
                          onPressed: () {
                            variaveis = calculaVar(expressao);
                            numVar = variaveis.length;
                            print(numVar);
                            if (numVar == 2) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tabela2Var(expressao, variaveis)));
                            } else if (numVar == 3) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tabela3Var(expressao, variaveis)));
                            } else if (numVar == 4) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tabela4Var(expressao, variaveis)));
                            } else {
                              //Alerta num de variáveis inválidas
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text(
                                      'Número de variáveis inválido!'),
                                  content: const Text(
                                      'Entre com uma expressão que tenha de 2 a 4 variáveis.'),
                                  actions: <Widget>[
                                    TextButton(
                                      style: TextButton.styleFrom(foregroundColor: const Color(0xff114b5f)),
                                      onPressed: () =>
                                          Navigator.pop(context),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: const Color(0xffdfee36),
                            foregroundColor: const Color(0xff000000),
                            padding: const EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            side: const BorderSide(width: 2),
                            textStyle: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          child: const Text(
                            'Obter tabela\nda verdade',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0.05 * baseWidth, 0, 0, 0.04 * baseHeight),
                        decoration: BoxDecoration(
                          color: const Color(0xffdfee36),
                          border: Border.all(
                            color: const Color(0xff000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          padding: const EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

//Calcular num de variaveis
List<String> calculaVar(String exp) {
  List<String> variaveis = [];
  String aux = exp;

  //Remover operadores logicos
  aux = aux.replaceAll(RegExp('[&|\'+*]+'), '');

  while (aux != '') {
    variaveis.add(aux[0]);
    aux = aux.replaceAll(RegExp(aux[0]), '');
  }

  return variaveis;
}
