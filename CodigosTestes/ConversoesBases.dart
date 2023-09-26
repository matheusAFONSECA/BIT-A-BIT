import 'dart:io';

void main() {
  stdout.write(convertBases(100101, 2, 10));
}

String convertBases(var num, int baseNum, int baseConv) {
  var decimal;
  var numConv; //numero convertido

  if (baseNum != 10) {
    decimal = int.parse(num, radix: baseNum);
  } else {
    decimal = num;
  }

  numConv = decimal.toRadixString(baseConv);

  return numConv;
}
