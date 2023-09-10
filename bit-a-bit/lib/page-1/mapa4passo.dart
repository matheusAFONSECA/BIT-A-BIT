import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mapa4var.dart';

// ignore: must_be_immutable
class Mapa4Passo extends StatefulWidget {
  Map<int, int> mapa;
  Mapa4Passo(this.mapa, {super.key});

  @override
  _Mapa4Passo createState() => _Mapa4Passo();
}

class _Mapa4Passo extends State<Mapa4Passo> {
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
                  margin: EdgeInsets.fromLTRB(
                      0.05 * baseWidth, 0.06 * baseHeight, 0.05 * baseWidth, 0),
                  child: Text('Resolução passo a passo\ndo Mapa de Karnaugh',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                        fontSize: 27,
                        color: Color(0xffffffff),
                      ))),
                ),
                //Final cabeçalho
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child:
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
                      defaultColumnWidth: FixedColumnWidth(0.18 * baseWidth),
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
                            child: Text(
                              valoresMapa[0000].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0001
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[0001].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0011
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[0011].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0010
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[0010].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
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
                            child: Text(
                              valoresMapa[0100].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0101
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[0101].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0111
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[0111].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0110
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[0110].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
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
                            child: Text(
                              valoresMapa[1100].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1101
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[1101].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1111
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[1111].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1110
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[1110].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
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
                            child: Text(
                              valoresMapa[1000].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1001
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[1001].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1011
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[1011].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1010
                          Container(
                            height: 0.18 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[1010].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
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
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.04 * baseHeight),
                        child: TextButton(
                          onPressed: () {},
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
                            'Download\nem PDF',
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
