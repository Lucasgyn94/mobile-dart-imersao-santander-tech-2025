import 'dart:io';

void main() {
  print("### CALCULADORA DE SOMA ###");
  
  print("Digite o primeiro número: ");
  var n1  = stdin.readLineSync();
  
  print("Digite o segundo número: ");
  var n2 = stdin.readLineSync();
  
  double n1Convertido = double.parse(n1!);
  double n2COnvertido = double.parse(n2!);
  
  double resultado = n1Convertido + n2COnvertido;

  print("$n1 + $n2 = $resultado");

}

void tipos() {
  int tipoInteiro = 0;
  double tipoDouble = 0.0;
  bool tipoBool = false || true;
  String tipoString = "";
  List tipoLista = [];
  
}