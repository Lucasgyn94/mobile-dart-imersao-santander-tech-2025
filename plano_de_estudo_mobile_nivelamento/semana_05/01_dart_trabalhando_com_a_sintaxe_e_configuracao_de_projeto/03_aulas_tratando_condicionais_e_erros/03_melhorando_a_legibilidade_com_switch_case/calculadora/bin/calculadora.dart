import 'dart:io';


double soma(double n1, double n2) {
  return n1 + n2;
}
double subtracao(double n1, double n2) {
  return n1 - n2;
}
double multiplicacao(double n1, double n2) {
  return n1 * n2;
}
double divisao(double n1, double n2) {
  return n1 / n2;
}

double capturaSegundoNumero () {
  print("Digite o segundo número: ");
  double numero = double.parse(stdin.readLineSync()!);
  return numero;
}

double capturaPrimeiroNumero () {
  print("Digite o primeiro número: ");
  double numero = double.parse(stdin.readLineSync()!);
  return numero;
}

String capturaOperacaoUsuario() {
  print("Qual operação deseja fazer? ");
  var operacao = stdin.readLineSync()!;
  return operacao;
}
void main() {
  print("### CALCULADORA ###");
  var operacao = capturaOperacaoUsuario();
  double n1 = capturaPrimeiroNumero();
  double n2 = capturaSegundoNumero();
  
  print(n1);
  print(n2);

  switch(operacao) {
    case '+': 
      double resultado = soma(n1, n2);
      print("$n1 + $n2 = $resultado");
      break;
    case '-': 
      double resultado = subtracao(n1, n2);
      print("$n1 - $n2 = $resultado");
      break;
    case '*': 
      double resultado = multiplicacao(n1, n2);
      print("$n1 * $n2 = $resultado");
    case '/': 
      double resultado = divisao(n1, n2);
      print("$n1 / $n2 = $resultado");
    default: print("Escolha uma operação válida: +, -, *, /");
  }

}

