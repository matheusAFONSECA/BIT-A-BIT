import 'dart:io';

void main() {
  while (true) {
    print('Escolha a base numérica:');
    print('1. Decimal');
    print('2. Binária');
    print('3. Octal');
    print('4. Hexadecimal');
    print('0. Sair');
    stdout.write('Opção: ');
    var option = int.tryParse(stdin.readLineSync() ?? '');

    if (option == null || option == 0) {
      break;
    }

    switch (option) {
      case 1:
        decimalToOtherBases();
        break;
      case 2:
        binaryToOtherBases();
        break;
      case 3:
        octalToOtherBases();
        break;
      case 4:
        hexadecimalToOtherBases();
        break;
      default:
        print('Opção inválida! Tente novamente.');
        break;
    }
  }
}

void decimalToOtherBases() {
  stdout.write('Digite o número decimal: ');
  var decimal = int.tryParse(stdin.readLineSync() ?? '');

  if (decimal == null) {
    print('Número inválido! Tente novamente.');
    return;
  }

  print('Binário: ${decimal.toRadixString(2)}');
  print('Octal: ${decimal.toRadixString(8)}');
  print('Hexadecimal: ${decimal.toRadixString(16)}');
}

void binaryToOtherBases() {
  stdout.write('Digite o número binário: ');
  var binary = stdin.readLineSync() ?? '';

  if (!isBinary(binary)) {
    print('Número binário inválido! Tente novamente.');
    return;
  }

  var decimal = int.parse(binary, radix: 2);
  print('Decimal: $decimal');
  print('Octal: ${decimal.toRadixString(8)}');
  print('Hexadecimal: ${decimal.toRadixString(16)}');
}

void octalToOtherBases() {
  stdout.write('Digite o número octal: ');
  var octal = stdin.readLineSync() ?? '';

  if (!isOctal(octal)) {
    print('Número octal inválido! Tente novamente.');
    return;
  }

  var decimal = int.parse(octal, radix: 8);
  print('Decimal: $decimal');
  print('Binário: ${decimal.toRadixString(2)}');
  print('Hexadecimal: ${decimal.toRadixString(16)}');
}

void hexadecimalToOtherBases() {
  stdout.write('Digite o número hexadecimal: ');
  var hexadecimal = stdin.readLineSync() ?? '';

  if (!isHexadecimal(hexadecimal)) {
    print('Número hexadecimal inválido! Tente novamente.');
    return;
  }

  var decimal = int.parse(hexadecimal, radix: 16);
  print('Decimal: $decimal');
  print('Binário: ${decimal.toRadixString(2)}');
  print('Octal: ${decimal.toRadixString(8)}');
}

bool isBinary(String number) {
  return RegExp(r'^[01]+$').hasMatch(number);
}

bool isOctal(String number) {
  return RegExp(r'^[0-7]+$').hasMatch(number);
}

bool isHexadecimal(String number) {
  return RegExp(r'^[0-9a-fA-F]+$').hasMatch(number);
}
