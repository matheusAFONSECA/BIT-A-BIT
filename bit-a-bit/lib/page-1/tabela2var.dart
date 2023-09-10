import 'package:flutter/material.dart';
import 'tabela.dart';

// ignore: must_be_immutable
class Tabela2Var extends StatefulWidget {
  String expressao;
  List<String> variaveis;
  Tabela2Var(this.expressao, this.variaveis, {super.key});

  @override
  _Tabela2Var createState() => _Tabela2Var();
}

var valoresTabela = criarTabela(expressao);

class _Tabela2Var extends State<Tabela2Var> {
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child:
                      //Tabela da verdade
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
                          Container(
                            height: 0.25 * baseWidth,
                            width: 0.25 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              variaveis[0],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.25 * baseWidth,
                            width: 0.25 * baseWidth,
                            alignment: Alignment.center,
                            child: Text(
                              variaveis[1],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
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
                              'S',
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
                              '0',
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
                              '0',
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
                              child: Text(
                              valoresTabela[00].toString(),
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
                            width: 0.25 * baseWidth,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
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
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                          //Valor 01
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.25 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresTabela[01].toString(),
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
                            width: 0.25 * baseWidth,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
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
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                          //Valor 10
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.25 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresTabela[10].toString(),
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
                            width: 0.25 * baseWidth,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
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
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),),
                          //Valor 11
                          Container(
                              height: 0.25 * baseWidth,
                              width: 0.25 * baseWidth,
                              alignment: Alignment.center,
                              child: Text(
                              valoresTabela[11].toString(),
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

Map<int, int> criarTabela(String exp){
  Map<int, int> tabela;
  //Aqui irá criar tabela
  tabela = {00: 0, 01:1, 10:1, 11:0};

  return tabela;
}