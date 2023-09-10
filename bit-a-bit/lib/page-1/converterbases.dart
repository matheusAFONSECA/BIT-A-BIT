import 'package:b/b.dart';

//Função verificar bases e converter
String converter(String bInicial, String bFinal, String num) {
  String numConvertido = '';

  if (bInicial == bFinal) {
    numConvertido = num;
  }
  else{
    switch(bInicial){
      //Binário para outra base
      case('Binário'):
        switch(bFinal){
          case('Octal'):
            numConvertido = binToOc(num);
            break;
          case('Decimal'):
            numConvertido = binToDeci(num);
            break;
          case('Hexadecimal'):
            numConvertido = binToHex(num);
            break;
        }
        break;
        //Octal para outra base
        case('Octal'):
        switch(bFinal){
          case('Binário'):
            numConvertido = ocToBin(num);
            break;
          case('Decimal'):
            numConvertido = ocToDeci(num);
            break;
          case('Hexadecimal'):
            numConvertido = ocToHex(num);
            break;
        }
        break;
        //Decimal para outra base
        case('Decimal'):
        switch(bFinal){
          case('Binário'):
            numConvertido = deciToBin(num);
            break;
          case('Octal'):
            numConvertido = deciToOc(num);
            break;
          case('Hexadecimal'):
            numConvertido = deciToHex(num);
            break;
        }
        break;
        //Hexadecimal para outra base
        case('Hexadecimal'):
        switch(bFinal){
          case('Binário'):
            numConvertido = hexToBin(num);
            break;
          case('Octal'):
            numConvertido = hexToOc(num);
            break;
          case('Decimal'):
            numConvertido = hexToDeci(num);
            break;
        }
        break;
    }
  }

  return numConvertido;
}

//Funções de conversões de bases
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