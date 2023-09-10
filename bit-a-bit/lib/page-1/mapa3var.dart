import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mapa3simp.dart';

class Mapa3Var extends StatefulWidget {
  const Mapa3Var({super.key});

  @override
  _Mapa3Var createState() => _Mapa3Var();
}

var estadoTexto = {000:false, 001:false, 010:false, 011:false, 100:false, 101:false, 110:false, 111:false};
var valoresMapa = {000:0, 001:0, 010:0, 011:0, 100:0, 101:0, 110:0, 111:0};

class _Mapa3Var extends State<Mapa3Var> {

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
                  child: Column(
                    children: [
                      Text('Insira os valores na\ntabela:',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                            fontSize: 27,
                            color: Color(0xffffffff),
                          ))),
                      //Mapa de Karnaugh
                      Container(
                        margin: EdgeInsets.fromLTRB(0.05*baseWidth, 0, 0.05*baseWidth, 0),
                        child: Table(
                          border: TableBorder.all(
                            color: const Color(0xff88d498),
                            width: 5,
                          ),
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          defaultColumnWidth: FixedColumnWidth(0.18*baseWidth),
                          children: <TableRow>[
                            TableRow(
                              children: <Widget>[
                                Container(
                                ),
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
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
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
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
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
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
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
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
                              ]
                            ),
                            TableRow(
                              children: <Widget>[
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
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
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: !(estadoTexto[000] ?? false),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              estadoTexto[000] = true;
                                            });
                                          },
                                          icon: const Icon(Icons.touch_app_outlined, color: Color(0xffffffff), size: 40),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Visibility(
                                        visible: estadoTexto[000] ?? false,
                                        child: TextButton(
                                          onPressed:() {
                                            setState(() {
                                              if(valoresMapa[000]==1){
                                                valoresMapa[000] = 0;
                                              }
                                              else{
                                                valoresMapa[000] = 1;
                                              }
                                            });
                                          },
                                          child: Text(
                                          valoresMapa[000].toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Color(0xffffffff),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                //Valor 001
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: !(estadoTexto[001] ?? false),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              estadoTexto[001] = true;
                                            });
                                          },
                                          icon: const Icon(Icons.touch_app_outlined, color: Color(0xffffffff), size: 40),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Visibility(
                                        visible: estadoTexto[001] ?? false,
                                        child: TextButton(
                                          onPressed:() {
                                            setState(() {
                                              if(valoresMapa[001]==1){
                                                valoresMapa[001] = 0;
                                              }
                                              else{
                                                valoresMapa[001] = 1;
                                              }
                                            });
                                          },
                                          child: Text(
                                          valoresMapa[001].toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Color(0xffffffff),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                //Valor 011
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: !(estadoTexto[011] ?? false),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              estadoTexto[011] = true;
                                            });
                                          },
                                          icon: const Icon(Icons.touch_app_outlined, color: Color(0xffffffff), size: 40),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Visibility(
                                        visible: estadoTexto[011] ?? false,
                                        child: TextButton(
                                          onPressed:() {
                                            setState(() {
                                              if(valoresMapa[011]==1){
                                                valoresMapa[011] = 0;
                                              }
                                              else{
                                                valoresMapa[011] = 1;
                                              }
                                            });
                                          },
                                          child: Text(
                                          valoresMapa[011].toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Color(0xffffffff),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                //Valor 010
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: !(estadoTexto[010] ?? false),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              estadoTexto[010] = true;
                                            });
                                          },
                                          icon: const Icon(Icons.touch_app_outlined, color: Color(0xffffffff), size: 40),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Visibility(
                                        visible: estadoTexto[010] ?? false,
                                        child: TextButton(
                                          onPressed:() {
                                            setState(() {
                                              if(valoresMapa[010]==1){
                                                valoresMapa[010] = 0;
                                              }
                                              else{
                                                valoresMapa[010] = 1;
                                              }
                                            });
                                          },
                                          child: Text(
                                          valoresMapa[010].toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Color(0xffffffff),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ]
                            ),
                            TableRow(
                              children: <Widget>[
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
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
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: !(estadoTexto[100] ?? false),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              estadoTexto[100] = true;
                                            });
                                          },
                                          icon: const Icon(Icons.touch_app_outlined, color: Color(0xffffffff), size: 40),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Visibility(
                                        visible: estadoTexto[100] ?? false,
                                        child: TextButton(
                                          onPressed:() {
                                            setState(() {
                                              if(valoresMapa[100]==1){
                                                valoresMapa[100] = 0;
                                              }
                                              else{
                                                valoresMapa[100] = 1;
                                              }
                                            });
                                          },
                                          child: Text(
                                          valoresMapa[100].toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Color(0xffffffff),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                //Valor 101
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: !(estadoTexto[101] ?? false),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              estadoTexto[101] = true;
                                            });
                                          },
                                          icon: const Icon(Icons.touch_app_outlined, color: Color(0xffffffff), size: 40),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Visibility(
                                        visible: estadoTexto[101] ?? false,
                                        child: TextButton(
                                          onPressed:() {
                                            setState(() {
                                              if(valoresMapa[101]==1){
                                                valoresMapa[101] = 0;
                                              }
                                              else{
                                                valoresMapa[101] = 1;
                                              }
                                            });
                                          },
                                          child: Text(
                                          valoresMapa[101].toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Color(0xffffffff),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                //Valor 111
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: !(estadoTexto[111] ?? false),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              estadoTexto[111] = true;
                                            });
                                          },
                                          icon: const Icon(Icons.touch_app_outlined, color: Color(0xffffffff), size: 40),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Visibility(
                                        visible: estadoTexto[111] ?? false,
                                        child: TextButton(
                                          onPressed:() {
                                            setState(() {
                                              if(valoresMapa[111]==1){
                                                valoresMapa[111] = 0;
                                              }
                                              else{
                                                valoresMapa[111] = 1;
                                              }
                                            });
                                          },
                                          child: Text(
                                          valoresMapa[111].toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Color(0xffffffff),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                                //Valor 110
                                Container(
                                  height: 0.25*baseWidth,
                                  width: 0.18*baseWidth,
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Visibility(
                                        visible: !(estadoTexto[110] ?? false),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              estadoTexto[110] = true;
                                            });
                                          },
                                          icon: const Icon(Icons.touch_app_outlined, color: Color(0xffffffff), size: 40),
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Visibility(
                                        visible: estadoTexto[110] ?? false,
                                        child: TextButton(
                                          onPressed:() {
                                            setState(() {
                                              if(valoresMapa[110]==1){
                                                valoresMapa[110] = 0;
                                              }
                                              else{
                                                valoresMapa[110] = 1;
                                              }
                                            });
                                          },
                                          child: Text(
                                          valoresMapa[110].toString(),
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Color(0xffffffff),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              ]
                            ),
                          ],
                        ),
                      ),
                    ]
                  ),
                ),
                //Botões inferiores
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0.05*baseWidth, 0.04*baseHeight),
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
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.04*baseHeight),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Mapa3Simp(valoresMapa)));
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
                        margin: EdgeInsets.fromLTRB(0.05*baseWidth, 0, 0, 0.04*baseHeight),
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
