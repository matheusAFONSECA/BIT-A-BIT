import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/mapa5simp.dart';
import 'mapa5var.dart';
import 'package:http/http.dart' as http;
import 'urlAtual.dart';

// ignore: must_be_immutable
class Mapa5VarE extends StatefulWidget {
  Map<int, int> mapa;
  Mapa5VarE(this.mapa, {super.key});

  @override
  _Mapa5VarE createState() => _Mapa5VarE();
}

var expressao = "";

class _Mapa5VarE extends State<Mapa5VarE> {
  Future<void> _sendDataToAPI() async {
    final url =
        "${urlAtual()}/simptabela"; // -> para quando rodar no PC (web)

    // quando for usar o "simplifica" mudar para "data"
    // quando for usar o "simptabela" mudar para "mapa"
    // quando for usar a "tabela" mudar para "exp"
    print(valoresMapa.toString());
    final response =
        await http.post(Uri.parse(url), body: {"mapa": valoresMapa.toString()});

    if (response.statusCode == 200) {
      // A solicitação foi bem-sucedida
      final responseData = response.body;
      setState(() {
        expressao = responseData;
      });
    } else {
      // A solicitação falhou
      print('Erro na solicitação: ${response.statusCode}');
    }
    print(expressao);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Mapa5Simp(expressao)));
  }
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
                        child: Text('Mapa de Karnaugh',
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: Column(children: [
                    Text('Insira os valores na\ntabela:',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                          fontSize: 27,
                          color: Color(0xffffffff),
                        ))),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0.02 * baseHeight, 0, 0),
                          alignment: Alignment.center,
                          child: const Text(
                            'E',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 40,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        //Mapa de Karnaugh
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0.05 * baseWidth, 0, 0.05 * baseWidth, 0),
                          child: Table(
                            border: TableBorder.all(
                              color: const Color(0xff88d498),
                              width: 5,
                            ),
                            defaultVerticalAlignment:
                                TableCellVerticalAlignment.middle,
                            defaultColumnWidth:
                                FixedColumnWidth(0.18 * baseWidth),
                            children: <TableRow>[
                              TableRow(children: <Widget>[
                                Container(),
                                Container(
                                  height: 0.18 * baseWidth,
                                  width: 0.18 * baseWidth,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'C\'D\'',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 0.18 * baseWidth,
                                  width: 0.18 * baseWidth,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'C\'D',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 0.18 * baseWidth,
                                  width: 0.18 * baseWidth,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'CD',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 0.18 * baseWidth,
                                  width: 0.18 * baseWidth,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'CD\'',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ]),
                              TableRow(children: <Widget>[
                                Container(
                                  height: 0.18 * baseWidth,
                                  width: 0.18 * baseWidth,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'A\'B\'',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                //Valor 10000
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[10000] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[10000] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[10000] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[10000] == 1) {
                                                  valoresMapa[10000] = 0;
                                                } else {
                                                  valoresMapa[10000] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[10000].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 10001
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[10001] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[10001] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[10001] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[10001] == 1) {
                                                  valoresMapa[10001] = 0;
                                                } else {
                                                  valoresMapa[10001] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[10001].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 10011
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[10011] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[10011] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[10011] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[10011] == 1) {
                                                  valoresMapa[10011] = 0;
                                                } else {
                                                  valoresMapa[10011] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[10011].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 10010
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[10010] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[10010] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[10010] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[10010] == 1) {
                                                  valoresMapa[10010] = 0;
                                                } else {
                                                  valoresMapa[10010] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[10010].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ]),
                              TableRow(children: <Widget>[
                                Container(
                                  height: 0.18 * baseWidth,
                                  width: 0.18 * baseWidth,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'A\'B',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                //Valor 10100
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[10100] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[10100] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[10100] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[10100] == 1) {
                                                  valoresMapa[10100] = 0;
                                                } else {
                                                  valoresMapa[10100] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[10100].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 10101
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[10101] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[10101] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[10101] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[10101] == 1) {
                                                  valoresMapa[10101] = 0;
                                                } else {
                                                  valoresMapa[10101] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[10101].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 10111
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[10111] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[10111] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[10111] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[10111] == 1) {
                                                  valoresMapa[10111] = 0;
                                                } else {
                                                  valoresMapa[10111] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[10111].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 10110
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[10110] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[10110] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[10110] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[10110] == 1) {
                                                  valoresMapa[10110] = 0;
                                                } else {
                                                  valoresMapa[10110] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[10110].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ]),
                              TableRow(children: <Widget>[
                                Container(
                                  height: 0.18 * baseWidth,
                                  width: 0.18 * baseWidth,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'AB',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                //Valor 11100
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[11100] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[11100] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[11100] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[11100] == 1) {
                                                  valoresMapa[11100] = 0;
                                                } else {
                                                  valoresMapa[11100] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[11100].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 11101
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[11101] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[11101] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[11101] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[11101] == 1) {
                                                  valoresMapa[11101] = 0;
                                                } else {
                                                  valoresMapa[11101] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[11101].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 11111
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[11111] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[11111] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[11111] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[11111] == 1) {
                                                  valoresMapa[11111] = 0;
                                                } else {
                                                  valoresMapa[11111] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[11111].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 11110
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[11110] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[11110] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[11110] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[11110] == 1) {
                                                  valoresMapa[11110] = 0;
                                                } else {
                                                  valoresMapa[11110] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[11110].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ]),
                              TableRow(children: <Widget>[
                                Container(
                                  height: 0.18 * baseWidth,
                                  width: 0.18 * baseWidth,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'AB\'',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                //Valor 11000
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[11000] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[11000] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[11000] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[11000] == 1) {
                                                  valoresMapa[11000] = 0;
                                                } else {
                                                  valoresMapa[11000] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[11000].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 11001
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[11001] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[11001] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[11001] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[11001] == 1) {
                                                  valoresMapa[11001] = 0;
                                                } else {
                                                  valoresMapa[11001] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[11001].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 11011
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[11011] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[11011] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[11011] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[11011] == 1) {
                                                  valoresMapa[11011] = 0;
                                                } else {
                                                  valoresMapa[11011] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[11011].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                //Valor 11010
                                Container(
                                    height: 0.18 * baseWidth,
                                    width: 0.18 * baseWidth,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Visibility(
                                          visible:
                                              !(estadoTexto[11010] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[11010] = true;
                                              });
                                            },
                                            icon: const Icon(
                                                Icons.touch_app_outlined,
                                                color: Color(0xffffffff),
                                                size: 40),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                        Visibility(
                                          visible: estadoTexto[11010] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[11010] == 1) {
                                                  valoresMapa[11010] = 0;
                                                } else {
                                                  valoresMapa[11010] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[11010].toString(),
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontSize: 40,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                              ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                //Botões inferiores
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0, 0, 0.05 * baseWidth, 0.04 * baseHeight),
                        decoration: BoxDecoration(
                          color: const Color(0xffdfee36),
                          border: Border.all(
                            color: const Color(0xff000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.home),
                          padding: const EdgeInsets.all(0.0),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.04 * baseHeight),
                        child: TextButton(
                          onPressed: () {
                            _sendDataToAPI();
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
                            'Simplificar',
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
