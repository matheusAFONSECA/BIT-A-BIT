import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/simplificadorPasso2.dart';

class Simplificacao2 extends StatefulWidget {
  const Simplificacao2({super.key});

  @override
  _Simplificacao2 createState() => _Simplificacao2();
}

class _Simplificacao2 extends State<Simplificacao2> {
  String expressao = '';
  String resultado = '';

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
                        left: 0.04 * baseWidth,
                        child: Text('Simplicação Booleana',
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
                //Expressão a ser simplificada
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: Column(
                    children: [
                      Text('Entre com a expressão que deseja simplificar:',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                            fontSize: 22,
                            color: Color(0xffffffff),
                          ))),
                      SizedBox(
                        width: baseWidth * 0.8,
                        height: baseHeight * 0.08,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Color(0xff000000), width: 2),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Color(0xff000000), width: 2),
                            ),
                            filled: true,
                            fillColor: Color(0xff88d498),
                          ),
                          maxLines: null,
                          onChanged: (String exp) {
                            setState(() {
                              expressao = exp;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: SizedBox(
                    width: baseWidth * 0.45,
                    height: baseHeight * 0.05,
                    child: TextButton(
                        onPressed: (){
                          resultado = simplificar(expressao);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffdfee36),
                          foregroundColor: const Color(0xff000000),
                          padding: const EdgeInsets.all(10),
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
                ),
                //Resultado simplificado
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: Column(
                    children: [
                      Text('Expressão simplificada:',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                            fontSize: 22,
                            color: Color(0xffffffff),
                          ))),
                      Container(
                        width: baseWidth * 0.8,
                        height: baseHeight * 0.1,
                        decoration: BoxDecoration(
                          color: Color(0xff88d498),
                          border: Border.all(
                            color: const Color(0xff000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            resultado,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
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
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.04*baseHeight),
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SimplificadorPasso2()));
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


//Simplificar expressão
String simplificar(String exp){
  String resultado = exp;

  return resultado;
}