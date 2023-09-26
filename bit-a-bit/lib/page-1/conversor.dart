import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/conversorpasso.dart';
import 'converterbases.dart';

class Conversor2 extends StatefulWidget {
  const Conversor2({super.key});

  @override
  _Conversor2 createState() => _Conversor2();
}

class _Conversor2 extends State<Conversor2> {
  final valorDropInicial = ValueNotifier('');
  final valorDropConvertido = ValueNotifier('');
  final basesDrop = ['Binário', 'Octal', 'Decimal', 'Hexadecimal'];
  String resultado = '';
  String numInicial = '';
  String aux = '';

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
                        left: 0.06 * baseWidth,
                        child: Text('Conversor de bases',
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
                //Seleção bases
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Base inicial
                        Container(
                            margin:
                                EdgeInsets.fromLTRB(0, 0, 0.08 * baseWidth, 0),
                            child: Column(
                              children: [
                                Text('Insira a base \ndo número:',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Color(0xffffffff),
                                    ))),
                                //Seleção base inicial
                                ValueListenableBuilder(
                                  valueListenable: valorDropInicial,
                                  builder:
                                      (BuildContext context, String value, _) {
                                    return SizedBox(
                                      width: baseWidth * 0.3,
                                      child: DropdownButtonFormField<String>(
                                        dropdownColor: const Color(0xff88d498),
                                        isExpanded: true,
                                        hint: const Text('Selecione:'),
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                                color: Color(0xff000000),
                                                width: 2),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                                color: Color(0xff000000),
                                                width: 2),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xff88d498),
                                        ),
                                        value: (value.isEmpty) ? null : value,
                                        onChanged: (escolha) {
                                          valorDropInicial.value =
                                              escolha.toString();
                                          setState(() {
                                            if ((numInicial.isNotEmpty) &&
                                                (valorDropConvertido
                                                    .value.isNotEmpty)) {
                                              aux = stringToBase(
                                                  valorDropInicial.value,
                                                  valorDropConvertido.value,
                                                  numInicial);
                                              if (aux ==
                                                  'Número de entrada inválido para a base inicial!') {
                                                resultado = '';
                                                showDialog<String>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) =>
                                                          AlertDialog(
                                                    title: Text(aux),
                                                    content: const Text(
                                                        'Entre com um número pertencente a base inicial dada.'),
                                                    actions: <Widget>[
                                                      TextButton(
                                                        style: TextButton.styleFrom(
                                                            foregroundColor:
                                                                const Color(
                                                                    0xff114b5f)),
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context),
                                                        child: const Text('OK'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              } else {
                                                resultado = aux;
                                              }
                                            }
                                          });
                                        },
                                        items: basesDrop
                                            .map(
                                              (opcao) => DropdownMenuItem(
                                                value: opcao,
                                                child: Text(opcao),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            )),
                        //Base final
                        Column(
                          children: [
                            Text('Insira para qual \nbase converter:',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Color(0xffffffff),
                                ))),
                            //Seleção base final
                            ValueListenableBuilder(
                              valueListenable: valorDropConvertido,
                              builder: (BuildContext context, String value, _) {
                                return SizedBox(
                                  width: baseWidth * 0.3,
                                  child: DropdownButtonFormField<String>(
                                    dropdownColor: const Color(0xff88d498),
                                    isExpanded: true,
                                    hint: const Text('Selecione:'),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                            color: Color(0xff000000), width: 2),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                            color: Color(0xff000000), width: 2),
                                      ),
                                      filled: true,
                                      fillColor: Color(0xff88d498),
                                    ),
                                    value: (value.isEmpty) ? null : value,
                                    onChanged: (escolha) {
                                      valorDropConvertido.value =
                                          escolha.toString();
                                      setState(() {
                                        if ((numInicial.isNotEmpty) &&
                                            (valorDropConvertido
                                                .value.isNotEmpty)) {
                                          aux = stringToBase(
                                              valorDropInicial.value,
                                              valorDropConvertido.value,
                                              numInicial);
                                          if (aux ==
                                              'Número de entrada inválido para a base inicial!') {
                                            resultado = '';
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                title: Text(aux),
                                                content: const Text(
                                                    'Entre com um número pertencente a base inicial dada.'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    style: TextButton.styleFrom(
                                                        foregroundColor:
                                                            const Color(
                                                                0xff114b5f)),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else {
                                            resultado = aux;
                                          }
                                        }
                                      });
                                    },
                                    items: basesDrop
                                        .map(
                                          (opcao) => DropdownMenuItem(
                                            value: opcao,
                                            child: Text(opcao),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ]),
                ),
                //Final seleção bases
                //Inserir número
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: Column(
                    children: [
                      Text('Insira o número:',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                            fontSize: 27,
                            color: Color(0xffffffff),
                          ))),
                      SizedBox(
                        width: baseWidth * 0.8,
                        height: baseHeight * 0.06,
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
                          onChanged: (String num) {
                            numInicial = num;
                            setState(() {
                              if ((numInicial.isNotEmpty) &&
                                  (valorDropConvertido.value.isNotEmpty)) {
                                aux = stringToBase(valorDropInicial.value,
                                    valorDropConvertido.value, numInicial);
                                if (aux ==
                                    'Número de entrada inválido para a base inicial!') {
                                  resultado = '';
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: Text(aux),
                                      content: const Text(
                                          'Entre com um número pertencente a base inicial dada.'),
                                      actions: <Widget>[
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              foregroundColor:
                                                  const Color(0xff114b5f)),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  resultado = aux;
                                }
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //Resultado número
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.03 * baseHeight, 0, 0),
                  child: Column(
                    children: [
                      Text('Resultado:',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                            fontSize: 27,
                            color: Color(0xffffffff),
                          ))),
                      Container(
                        width: baseWidth * 0.8,
                        height: baseHeight * 0.06,
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
                            style: const TextStyle(
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
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0.04 * baseHeight),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ConversorPasso2()));
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
