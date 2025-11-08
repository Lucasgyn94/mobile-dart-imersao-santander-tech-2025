import 'dart:io';

void main() {
  print("### CALCULADORA DE SOMA ###");
  
  print("Digite o primeiro número: ");
  var n1  = stdin.readLineSync();
  
  print("Digite o segundo número: ");
  var n2 = stdin.readLineSync();
  
  var resultado = n1! + n2!;
  
  print("$n1 + $n2 = $resultado");



}