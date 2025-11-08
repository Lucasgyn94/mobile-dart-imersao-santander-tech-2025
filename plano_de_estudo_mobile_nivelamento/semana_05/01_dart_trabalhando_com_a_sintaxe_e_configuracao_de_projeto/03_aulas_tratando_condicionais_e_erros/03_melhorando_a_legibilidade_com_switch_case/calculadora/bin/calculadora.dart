import 'dart:io';

String capturarOperacaoUsuario () {
  print("Qual operação matemática deseja efetuar?");
  print("Escolha uma entre: +, -, *, /");
  String operacao = stdin.readLineSync()!;
  return operacao;
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

void adicao(double n1, double n2) {
  double resultado = n1 + n2;
  print("$n1 + $n2 = $resultado");
}

void subtracao(double n1, double n2) {
  double resultado = n1 - n2;
  print("$n1 - $n2 = $resultado");

}

void multiplicacao(double n1, double n2) {
  double resultado = n1 * n2;
  print("$n1 * $n2 = $resultado");
}

void divisao(double n1, double n2) {
  double resultado = n1 / n2;
  print("$n1 / $n2 = $resultado");
}

void main() {
  print("### CALCULADORA ###");
  var operacao = capturarOperacaoUsuario();
  var n1 = capturaPrimeiroNumero();
  var n2 = capturaSegundoNumero();

  switch(operacao) {
    case "+":
      adicao(n1, n2);
      break;
    case "-":
      subtracao(n1, n2);
      break;
    case "*":
      multiplicacao(n1, n2);
      break;
    case "/":
      divisao(n1, n2);
      break;
    default: print("Opção inválida!");

  }
}

