import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mapa2simp.dart';
import 'package:http/http.dart' as http;

class Mapa2Var extends StatefulWidget {
  const Mapa2Var({super.key});

  @override
  _Mapa2Var createState() => _Mapa2Var();
}

var estadoTexto = {00: false, 01: false, 10: false, 11: false};
var valoresMapa = {00: 0, 01: 0, 10: 0, 11: 0};
var expressao = "";

class _Mapa2Var extends State<Mapa2Var> {
  Future<void> _sendDataToAPI() async {
    final url =
        "http://127.0.0.1:5000/simptabela"; // -> para quando rodar no PC (web)

    // quando for usar o "simplifica" mudar para "data"
    // quando for usar o "simptabela" mudar para "mapa"
    // quando for usar a "tabela" mudar para "exp"
    final response =
        await http.post(Uri.parse(url), body: {"mapa": valoresMapa});

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

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Mapa2Simp(expressao)));
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
                        defaultColumnWidth: FixedColumnWidth(0.25 * baseWidth),
                        children: <TableRow>[
                          TableRow(children: <Widget>[
                            Container(),
                            Container(
                              height: 0.25 * baseWidth,
                              width: 0.25 * baseWidth,
                              alignment: Alignment.center,
                              child: const Text(
                                'B\'',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              height: 0.25 * baseWidth,
                              width: 0.25 * baseWidth,
                              alignment: Alignment.center,
                              child: const Text(
                                'B',
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
                              height: 0.25 * baseWidth,
                              width: 0.25 * baseWidth,
                              alignment: Alignment.center,
                              child: const Text(
                                'A\'',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            //Valor 00
                            Container(
                                height: 0.25 * baseWidth,
                                width: 0.25 * baseWidth,
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: !(estadoTexto[00] ?? false),
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            estadoTexto[00] = true;
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
                                      visible: estadoTexto[00] ?? false,
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if (valoresMapa[00] == 1) {
                                              valoresMapa[00] = 0;
                                            } else {
                                              valoresMapa[00] = 1;
                                            }
                                          });
                                        },
                                        child: Text(
                                          valoresMapa[00].toString(),
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
                            //Valor 01
                            Container(
                                height: 0.25 * baseWidth,
                                width: 0.25 * baseWidth,
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: !(estadoTexto[01] ?? false),
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            estadoTexto[01] = true;
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
                                      visible: estadoTexto[01] ?? false,
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if (valoresMapa[01] == 1) {
                                              valoresMapa[01] = 0;
                                            } else {
                                              valoresMapa[01] = 1;
                                            }
                                          });
                                        },
                                        child: Text(
                                          valoresMapa[01].toString(),
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
                              height: 0.25 * baseWidth,
                              width: 0.25 * baseWidth,
                              alignment: Alignment.center,
                              child: const Text(
                                'A',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            //Valor 10
                            Container(
                                height: 0.25 * baseWidth,
                                width: 0.25 * baseWidth,
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: !(estadoTexto[10] ?? false),
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            estadoTexto[10] = true;
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
                                      visible: estadoTexto[10] ?? false,
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if (valoresMapa[10] == 1) {
                                              valoresMapa[10] = 0;
                                            } else {
                                              valoresMapa[10] = 1;
                                            }
                                          });
                                        },
                                        child: Text(
                                          valoresMapa[10].toString(),
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
                            //Valor 11
                            Container(
                                height: 0.25 * baseWidth,
                                width: 0.25 * baseWidth,
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Visibility(
                                      visible: !(estadoTexto[11] ?? false),
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            estadoTexto[11] = true;
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
                                      visible: estadoTexto[11] ?? false,
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if (valoresMapa[11] == 1) {
                                              valoresMapa[11] = 0;
                                            } else {
                                              valoresMapa[11] = 1;
                                            }
                                          });
                                        },
                                        child: Text(
                                          valoresMapa[11].toString(),
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
