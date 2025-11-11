import 'dart:io';

List<String> operacoes = <String>["+", "-", "*", "/"];

void calcular(String operacao, double n1, double n2) {
  switch (operacao) {
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
    default:
      print("Operação '$operacao' não é válida. Revise a operação digitada!");
  }
}

String capturarOperacaoUsuario() {
  print("Qual operação matemática deseja efetuar?");
  print("Escolha uma entre: +, -, *, /");
  String? entrada = stdin.readLineSync();

  if ((entrada == null) || entrada == "") {
    print("Entrada não pode ser nula!");
    exit(0);
  }

  return entrada;
}

double capturarSegundoNumero() {
  print("Digite o primeiro número: ");
  String? entrada = stdin.readLineSync();

  double? numero = double.tryParse(entrada ?? "");

  if (numero == null) {
    print("Entrada $entrada não é um número válido!");
    exit(0);
  }
  return numero;
}

double capturarPrimeiroNumero() {
  print("Digite o primeiro número: ");
  String? entrada = stdin.readLineSync();

  double? numero = double.tryParse(entrada ?? "");

  if (numero == null) {
    print("Entrada $entrada não é um número válido!");
    exit(0);
  }
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
  var n1 = capturarPrimeiroNumero();
  var n2 = capturarSegundoNumero();

  calcular(operacao, n1, n2);
}
