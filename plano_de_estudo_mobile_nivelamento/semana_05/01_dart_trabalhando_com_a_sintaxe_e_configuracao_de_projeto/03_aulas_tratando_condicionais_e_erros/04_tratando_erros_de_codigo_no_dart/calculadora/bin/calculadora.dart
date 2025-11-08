import 'dart:io';

String capturarOperacaoUsuario () {
  print("Qual operação matemática deseja efetuar?");
  print("Escolha uma entre: +, -, *, /");
  String? entrada = stdin.readLineSync();
  String operacao = "";

  if ((entrada == null) || entrada == "") {
    print("Opção não pode ser nula");
    exit(0);
  } else if(entrada.startsWith("+") || entrada.startsWith("a") || entrada.startsWith("-") || entrada.startsWith("s") || entrada.startsWith("*") || entrada.startsWith("m") || entrada.startsWith("/") || entrada.startsWith("d")) {
    operacao = entrada;
    return operacao;
  } else {
    print("Operação inválida!");
    exit(0);
  }
  
}

double capturarSegundoNumero() {
  print("Digite o segundo número: ");
  String? entrada = stdin.readLineSync();
  double numero = 0.0;

  if (entrada != null) {
    if (entrada != "") {
      numero = double.parse(entrada);
      return numero;
    }
  } else {
    print("Erro: Digite um número válido");
    return 0.0;
  }
  return 0.0;
}

double capturarPrimeiroNumero() {
  print("Digite o primeiro número: ");
  String? entrada = stdin.readLineSync();
  double numero = 0.0;

  if (entrada != null) {
    if (entrada != "") {
      numero = double.parse(entrada);
      return numero;
    }
  } else {
    print("Erro: Digite um número válido");
    return 0.0;
  }
  return 0.0;
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

