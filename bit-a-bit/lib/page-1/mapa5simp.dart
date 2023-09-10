import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mapa5var.dart';
import 'mapa5passo.dart';

// ignore: must_be_immutable
class Mapa5Simp extends StatefulWidget {
  Map<int, int> mapa;
  Mapa5Simp(this.mapa, {super.key});

  @override
  _Mapa5Simp createState() => _Mapa5Simp();
}

class _Mapa5Simp extends State<Mapa5Simp> {

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
                  margin: EdgeInsets.fromLTRB(0.05*baseWidth, 0.06 * baseHeight, 0.05*baseWidth, 0),
                  child: Text(
                    'Expressão Simplificada:',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                    fontSize: 27,
                    color: Color(0xffffffff),
                    ))),
                ),
                //Final cabeçalho
                //Expressão simplificada
                Container(
                  margin: EdgeInsets.fromLTRB(0.05*baseWidth, 0.06 * baseHeight, 0.05*baseWidth, 0),
                  child: Text(
                    simplificarExp(valoresMapa),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                    fontSize: 27,
                    color: Color(0xffffffff),
                    ))),
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
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.04*baseHeight),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Mapa5Passo(widget.mapa)));
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
                            'Resolução\npasso a passo',
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

String simplificarExp(Map<int, int> valoresMapa)
{
  //Simplificar a expressão
  String exp = 'Aqui aparecerá a expressão simplificada\nMapa: ${valoresMapa.toString()}';
  return exp;
}