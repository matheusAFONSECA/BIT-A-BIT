import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/mapa2var.dart';
import 'package:myapp/page-1/mapa3var.dart';
import 'package:myapp/page-1/mapa4var.dart';
import 'package:myapp/page-1/mapa5var.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

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
                //Selecionar número de variáveis
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: Column(
                    children: [
                      Text('Selecione o número de\nvariáveis:',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                            fontSize: 27,
                            color: Color(0xffffffff),
                          ))),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0.06 * baseHeight),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 0.25 * baseWidth,
                                    height: 0.25 * baseWidth,
                                    margin: EdgeInsets.fromLTRB(0, 0, 0.06*baseWidth, 0),
                                    child: TextButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Mapa2Var()));
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: const Color(0xff88d498),
                                        foregroundColor: const Color(0xff000000),
                                        padding: const EdgeInsets.all(20),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        side: const BorderSide(width: 2),
                                        textStyle: const TextStyle(
                                          fontSize: 40,
                                        ),
                                      ),
                                      child: const Text(
                                        '2',
                                        textAlign: TextAlign.center,
                                        ),
                                    ),
                                  ),
                                  Container(
                                    width: 0.25*baseWidth,
                                    height: 0.25*baseWidth,
                                    margin: EdgeInsets.fromLTRB(0.06*baseWidth, 0, 0, 0),
                                    child: TextButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Mapa3Var()));
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor: const Color(0xff88d498),
                                        foregroundColor: const Color(0xff000000),
                                        padding: const EdgeInsets.all(20),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        side: const BorderSide(width: 2),
                                        textStyle: const TextStyle(
                                          fontSize: 40,
                                        ),
                                      ),
                                      child: const Text(
                                        '3',
                                        textAlign: TextAlign.center,
                                        ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 0.25*baseWidth,
                                  height: 0.25*baseWidth,
                                  margin: EdgeInsets.fromLTRB(0, 0, 0.06*baseWidth, 0),
                                  child: TextButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Mapa4Var()));
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color(0xff88d498),
                                      foregroundColor: const Color(0xff000000),
                                      padding: const EdgeInsets.all(20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      side: const BorderSide(width: 2),
                                      textStyle: const TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                    child: const Text(
                                      '4',
                                      textAlign: TextAlign.center,
                                      ),
                                  ),
                                ),
                                Container(
                                  width: 0.25*baseWidth,
                                  height: 0.25*baseWidth,
                                  margin: EdgeInsets.fromLTRB(0.06*baseWidth, 0, 0, 0),
                                  child: TextButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Mapa5Var()));
                                    },
                                    style: TextButton.styleFrom(
                                      backgroundColor: const Color(0xff88d498),
                                      foregroundColor: const Color(0xff000000),
                                      padding: const EdgeInsets.all(20),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      side: const BorderSide(width: 2),
                                      textStyle: const TextStyle(
                                        fontSize: 40,
                                      ),
                                    ),
                                    child: const Text(
                                      '5',
                                      textAlign: TextAlign.center,
                                      ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
