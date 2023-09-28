import 'package:flutter/material.dart';
import 'tabela.dart';

// ignore: must_be_immutable
class Tabela4Var extends StatefulWidget {
  String tab;
  List<String> variaveis;
  Tabela4Var(this.tab, this.variaveis, {super.key});

  @override
  _Tabela4Var createState() => _Tabela4Var();
}

class _Tabela4Var extends State<Tabela4Var> {
  var valoresTabela = criarTabela(tab);
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
                      defaultColumnWidth: FixedColumnWidth(0.18 * baseWidth),
                      children: <TableRow>[
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.075 * baseHeight,
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
                            height: 0.075 * baseHeight,
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
                            height: 0.075 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              variaveis[2],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.075 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              variaveis[3],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.075 * baseHeight,
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
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0000
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[000].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0001
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[001].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0010
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[010].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0011
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[011].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0100
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[100].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0101
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[101].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0110
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[110].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 0111
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[111].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1000
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[1000].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1001
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[1001].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1010
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[1010].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1011
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[1011].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1100
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[1100].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1101
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[1101].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '0',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1110
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[1110].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ]),
                        TableRow(children: <Widget>[
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: const Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          //Valor 1111
                          Container(
                            height: 0.045 * baseHeight,
                            alignment: Alignment.center,
                            child: Text(
                              valoresTabela[1111].toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
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

Map<int, int> criarTabela(String tab) {
  Map<int, int> tabela = {};
  String aux = tab;
  List listAux;
  int indice;
  int valor;

  aux = aux.replaceAll(',', '');
  aux = aux.replaceAll('(', '');
  aux = aux.replaceAll(')', '');
  aux = aux.replaceAll('[', '');
  aux = aux.replaceAll(']', '');
  print(aux);
  listAux = aux.split(' ');
  print(listAux.length);
  for (int i = 0; i < listAux.length; i += 5) {
    aux = listAux[i] + listAux[i + 1] + listAux[i + 2] + listAux[i + 3];
    print(aux);
    indice = int.parse(aux);
    if (listAux[i + 4] == 'False') {
      valor = 0;
    } else {
      valor = 1;
    }
    tabela.addAll({indice: valor});
  }

  return tabela;
}
