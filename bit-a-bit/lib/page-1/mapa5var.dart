import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mapa5varE.dart';

class Mapa5Var extends StatefulWidget {
  const Mapa5Var({super.key});

  @override
  _Mapa5Var createState() => _Mapa5Var();
}

var estadoTexto = {
  0000: false,
  0001: false,
  0010: false,
  0011: false,
  0100: false,
  0101: false,
  0110: false,
  0111: false,
  1000: false,
  1001: false,
  1010: false,
  1011: false,
  1100: false,
  1101: false,
  1110: false,
  1111: false,
  10000: false,
  10001: false,
  10010: false,
  10011: false,
  10100: false,
  10101: false,
  10110: false,
  10111: false,
  11000: false,
  11001: false,
  11010: false,
  11011: false,
  11100: false,
  11101: false,
  11110: false,
  11111: false
};
var valoresMapa = {
  00000: 0,
  00001: 0,
  00010: 0,
  00011: 0,
  00100: 0,
  00101: 0,
  00110: 0,
  00111: 0,
  01000: 0,
  01001: 0,
  01010: 0,
  01011: 0,
  01100: 0,
  01101: 0,
  01110: 0,
  01111: 0,
  10000: 0,
  10001: 0,
  10010: 0,
  10011: 0,
  10100: 0,
  10101: 0,
  10110: 0,
  10111: 0,
  11000: 0,
  11001: 0,
  11010: 0,
  11011: 0,
  11100: 0,
  11101: 0,
  11110: 0,
  11111: 0
};

class _Mapa5Var extends State<Mapa5Var> {
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
                            'E\'',
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
                                //Valor 0000
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
                                              !(estadoTexto[0000] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[0000] = true;
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
                                          visible: estadoTexto[0000] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[0000] == 1) {
                                                  valoresMapa[0000] = 0;
                                                } else {
                                                  valoresMapa[0000] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[0000].toString(),
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
                                //Valor 0001
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
                                              !(estadoTexto[0001] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[0001] = true;
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
                                          visible: estadoTexto[0001] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[0001] == 1) {
                                                  valoresMapa[0001] = 0;
                                                } else {
                                                  valoresMapa[0001] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[0001].toString(),
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
                                //Valor 0011
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
                                              !(estadoTexto[0011] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[0011] = true;
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
                                          visible: estadoTexto[0011] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[0011] == 1) {
                                                  valoresMapa[0011] = 0;
                                                } else {
                                                  valoresMapa[0011] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[0011].toString(),
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
                                //Valor 0010
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
                                              !(estadoTexto[0010] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[0010] = true;
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
                                          visible: estadoTexto[0010] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[0010] == 1) {
                                                  valoresMapa[0010] = 0;
                                                } else {
                                                  valoresMapa[0010] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[0010].toString(),
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
                                //Valor 0100
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
                                              !(estadoTexto[0100] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[0100] = true;
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
                                          visible: estadoTexto[0100] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[0100] == 1) {
                                                  valoresMapa[0100] = 0;
                                                } else {
                                                  valoresMapa[0100] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[0100].toString(),
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
                                //Valor 0101
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
                                              !(estadoTexto[0101] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[0101] = true;
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
                                          visible: estadoTexto[0101] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[0101] == 1) {
                                                  valoresMapa[0101] = 0;
                                                } else {
                                                  valoresMapa[0101] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[0101].toString(),
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
                                //Valor 0111
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
                                              !(estadoTexto[0111] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[0111] = true;
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
                                          visible: estadoTexto[0111] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[0111] == 1) {
                                                  valoresMapa[0111] = 0;
                                                } else {
                                                  valoresMapa[0111] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[0111].toString(),
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
                                //Valor 0110
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
                                              !(estadoTexto[0110] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[0110] = true;
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
                                          visible: estadoTexto[0110] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[0110] == 1) {
                                                  valoresMapa[0110] = 0;
                                                } else {
                                                  valoresMapa[0110] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[0110].toString(),
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
                                //Valor 1100
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
                                              !(estadoTexto[1100] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[1100] = true;
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
                                          visible: estadoTexto[1100] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[1100] == 1) {
                                                  valoresMapa[1100] = 0;
                                                } else {
                                                  valoresMapa[1100] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[1100].toString(),
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
                                //Valor 1101
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
                                              !(estadoTexto[1101] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[1101] = true;
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
                                          visible: estadoTexto[1101] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[1101] == 1) {
                                                  valoresMapa[1101] = 0;
                                                } else {
                                                  valoresMapa[1101] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[1101].toString(),
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
                                //Valor 1111
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
                                              !(estadoTexto[1111] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[1111] = true;
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
                                          visible: estadoTexto[1111] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[1111] == 1) {
                                                  valoresMapa[1111] = 0;
                                                } else {
                                                  valoresMapa[1111] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[1111].toString(),
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
                                //Valor 1110
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
                                              !(estadoTexto[1110] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[1110] = true;
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
                                          visible: estadoTexto[1110] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[1110] == 1) {
                                                  valoresMapa[1110] = 0;
                                                } else {
                                                  valoresMapa[1110] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[1110].toString(),
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
                                //Valor 1000
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
                                              !(estadoTexto[1000] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[1000] = true;
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
                                          visible: estadoTexto[1000] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[1000] == 1) {
                                                  valoresMapa[1000] = 0;
                                                } else {
                                                  valoresMapa[1000] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[1000].toString(),
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
                                //Valor 1001
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
                                              !(estadoTexto[1001] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[1001] = true;
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
                                          visible: estadoTexto[1001] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[1001] == 1) {
                                                  valoresMapa[1001] = 0;
                                                } else {
                                                  valoresMapa[1001] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[1001].toString(),
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
                                //Valor 1011
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
                                              !(estadoTexto[1011] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[1011] = true;
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
                                          visible: estadoTexto[1011] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[1011] == 1) {
                                                  valoresMapa[1011] = 0;
                                                } else {
                                                  valoresMapa[1011] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[1011].toString(),
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
                                //Valor 1010
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
                                              !(estadoTexto[1010] ?? false),
                                          child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                estadoTexto[1010] = true;
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
                                          visible: estadoTexto[1010] ?? false,
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {
                                                if (valoresMapa[1010] == 1) {
                                                  valoresMapa[1010] = 0;
                                                } else {
                                                  valoresMapa[1010] = 1;
                                                }
                                              });
                                            },
                                            child: Text(
                                              valoresMapa[1010].toString(),
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
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.04 * baseHeight),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Mapa5VarE(valoresMapa)));
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
                            'Tabela do E',
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
