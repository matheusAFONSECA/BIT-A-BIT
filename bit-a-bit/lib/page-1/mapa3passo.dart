import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mapa3var.dart';

// ignore: must_be_immutable
class Mapa3Passo extends StatefulWidget {
  Map<int, int> mapa;
  Mapa3Passo(this.mapa, {super.key});

  @override
  _Mapa3Passo createState() => _Mapa3Passo();
}

class _Mapa3Passo extends State<Mapa3Passo> {
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
                            height: 0.25 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: const Text(
                              'B\'C\'',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.25 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: const Text(
                              'B\'C',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.25 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: const Text(
                              'BC',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.25 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: const Text(
                              'BC\'',
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
                            width: 0.18 * baseWidth,
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
                          //Valor 000
                          Container(
                            height: 0.25 * baseWidth,
                            width: 0.18 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              valoresMapa[000].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 001
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.18 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresMapa[001].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                          //Valor 011
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.18 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresMapa[011].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                          //Valor 010
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.18 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresMapa[010].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.25 * baseWidth,
                            width: 0.18 * baseWidth,
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
                          //Valor 100
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.18 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresMapa[100].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                          //Valor 101
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.18 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresMapa[101].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                          //Valor 111
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.18 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresMapa[111].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                          //Valor 110
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.18 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresMapa[110].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
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
