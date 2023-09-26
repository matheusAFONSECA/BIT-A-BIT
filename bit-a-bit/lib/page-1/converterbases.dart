import 'package:b/b.dart';

// Enumeração para representar as bases
enum Base {
  Binary,
  Octal,
  Decimal,
  Hexadecimal,
}

// Função para verificar se uma string é um número válido na base especificada
bool isValidNumber(String input, Base base) {
  String pattern;

  switch (base) {
    case Base.Binary:
      pattern = r'^[01]+$';
      break;
    case Base.Octal:
      pattern = r'^[0-7]+$';
      break;
    case Base.Decimal:
      pattern = r'^[0-9]+$';
      break;
    case Base.Hexadecimal:
      pattern = r'^[0-9A-Fa-f]+$';
      break;
  }

  final regex = RegExp(pattern);
  return regex.hasMatch(input);
}

// Função para converter números entre bases com validação de entrada
String converter(Base initialBase, Base finalBase, String num) {
  if (!isValidNumber(num, initialBase)) {
    return 'Número de entrada inválido para a base inicial.';
  }

  String numConverted = '';

  if (initialBase == finalBase) {
    numConverted = num;
  } else {
    switch (initialBase) {
      case Base.Binary:
        switch (finalBase) {
          case Base.Octal:
            numConverted = binToOc(num);
            break;
          case Base.Decimal:
            numConverted = binToDeci(num);
            break;
          case Base.Hexadecimal:
            numConverted = binToHex(num);
            break;
        }
        break;
      case Base.Octal:
        switch (finalBase) {
          case Base.Binary:
            numConverted = ocToBin(num);
            break;
          case Base.Decimal:
            numConverted = ocToDeci(num);
            break;
          case Base.Hexadecimal:
            numConverted = ocToHex(num);
            break;
        }
        break;
      case Base.Decimal:
        switch (finalBase) {
          case Base.Binary:
            numConverted = deciToBin(num);
            break;
          case Base.Octal:
            numConverted = deciToOc(num);
            break;
          case Base.Hexadecimal:
            numConverted = deciToHex(num);
            break;
        }
        break;
      case Base.Hexadecimal:
        switch (finalBase) {
          case Base.Binary:
            numConverted = hexToBin(num);
            break;
          case Base.Octal:
            numConverted = hexToOc(num);
            break;
          case Base.Decimal:
            numConverted = hexToDeci(num);
            break;
        }
        break;
    }
  }

  return numConverted;
}

final BaseConversion binToOc = BaseConversion(from: base2, to: base8);
final BaseConversion binToDeci = BaseConversion(from: base2, to: base10);
final BaseConversion binToHex = BaseConversion(from: base2, to: base16);

final BaseConversion ocToBin = BaseConversion(from: base8, to: base2);
final BaseConversion ocToDeci = BaseConversion(from: base8, to: base10);
final BaseConversion ocToHex = BaseConversion(from: base8, to: base16);

final BaseConversion deciToBin = BaseConversion(from: base10, to: base2);
final BaseConversion deciToOc = BaseConversion(from: base10, to: base8);
final BaseConversion deciToHex = BaseConversion(from: base10, to: base16);

final BaseConversion hexToBin = BaseConversion(from: base16, to: base2);
final BaseConversion hexToOc = BaseConversion(from: base16, to: base8);
final BaseConversion hexToDeci = BaseConversion(from: base16, to: base10);
