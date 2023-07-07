import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:teste_fetin_dart/teste_fetin_dart.dart' as teste_fetin_dart;
import 'package:boolean_selector/boolean_selector.dart';
//import 'package:dart_extensions_methods/boolean_methods.dart';
import 'package:dart_extensions_methods/dart_extension_methods.dart';
/*import 'package:dart_extensions_methods/general.dart';
import 'package:dart_extensions_methods/iterable_methods.dart';
import 'package:dart_extensions_methods/pair.dart';
import 'package:dart_extensions_methods/string_methods.dart';*/

void main(List<String> arguments) {
  /*var selector = BooleanSelector.parse('(x && y) || z');
  print(selector);
  print(selector.evaluate((variable) => arguments.contains(variable)));*/

  int nVar; //numero de variaveis
  int cont; //contador

  nVar = calculaVar('a&&b&&c|| a');
  print(calculaSaida(nVar, 2));

  String teste = "true";
  print(teste.toBoolean());
}

//Converter de inteiro para booleano
bool intToBool(int a) {
  if (a == 0)
    return false;
  else
    return true;
}

//Calcula os valores da tabela/mapa
Map<dynamic, dynamic> calculaSaida(int nVar, var vars) {
  var saida = new Map();
  String id;
  bool auxSaida;

  if (nVar == 1) {
    for (int A = 0; A <= 1; A++) {
      id = A.toString();

      //Alterar para mostrar resultado da expressão
      auxSaida = intToBool(A);

      if (auxSaida) {
        saida[id] = 1;
      } else {
        saida[id] = 0;
      }
    }
  } else if (nVar == 2) {
    for (int A = 0; A <= 1; A++) {
      for (int B = 0; B <= 1; B++) {
        id = A.toString() + B.toString();

        //Alterar para mostrar resultado da expressão
        auxSaida = intToBool(A) || intToBool(B);

        if (auxSaida) {
          saida[id] = 1;
        } else {
          saida[id] = 0;
        }
      }
    }
  } else if (nVar == 3) {
    for (int A = 0; A <= 1; A++) {
      for (int B = 0; B <= 1; B++) {
        for (int C = 0; C <= 1; C++) {
          id = A.toString() + B.toString() + C.toString();

          //Alterar para mostrar resultado da expressão
          auxSaida = intToBool(A) || intToBool(B) || intToBool(C);

          if (auxSaida) {
            saida[id] = 1;
          } else {
            saida[id] = 0;
          }
        }
      }
    }
  } else if (nVar == 4) {
    for (int A = 0; A <= 1; A++) {
      for (int B = 0; B <= 1; B++) {
        for (int C = 0; C <= 1; C++) {
          for (int D = 0; D <= 1; D++) {
            id = A.toString() + B.toString() + C.toString();

            //Alterar para mostrar resultado da expressão
            auxSaida = intToBool(A) || intToBool(B) || intToBool(C);

            if (auxSaida) {
              saida[id] = 1;
            } else {
              saida[id] = 0;
            }
          }
        }
      }
    }
  }

  return saida;
}

//Calcular num de variaveis
int calculaVar(String exp) {
  int nVar = 0;
  String aux = exp;

  //Remover operadores logicos
  //falta o not
  aux = aux.replaceAll(RegExp('[&\|\ \+\*]+'), '');

  while (aux != '') {
    aux = aux.replaceAll(RegExp(aux[0]), '');
    nVar++;
  }

  return nVar;
}

//bool stringParaBool(int nVar, var vars, var exp){}
