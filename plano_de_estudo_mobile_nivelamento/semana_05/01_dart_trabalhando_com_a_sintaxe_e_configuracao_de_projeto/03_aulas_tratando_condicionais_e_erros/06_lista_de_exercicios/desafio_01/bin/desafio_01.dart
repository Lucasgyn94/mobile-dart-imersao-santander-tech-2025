import 'dart:io';

void main() {
  print("### CALCULADORA IDADE PARA CNH ###");
  print("Digite sua idade para saber se pode ou não dirigir: ");
  String? entrada = stdin.readLineSync();

  if ((entrada == null) || (entrada == "")) {
    throw FormatException("Entrada '$entrada' não pode ser nula ou vazia");
  }

  if (!entrada.startsWith(RegExp("[0-9]"))) {
    throw FormatException("Entrada '$entrada' não começa com números válidos 0..9");
  }

  if (entrada.contains(RegExp("[a-z]"))) {
    throw FormatException("Entrada '$entrada' não contém todos números válidos 0..9");
  }

  int idade = int.parse(entrada);

  if (idade >= 18) {
    print("Você tem $idade anos e está habilitado para tirar cnh e dirigir");
  } else {
    print("Você tem $idade anos e não está habilitado para tirar cnh e dirigir!");
  }

}

/*
## 1) Calculando idade para carteira de motorista
* Escreva um programa em Dart que verifica se uma pessoa pode ou não dirigir um veículo com base na sua idade. O programa deve solicitar ao usuário que digite sua idade e então informar, com uma mensagem, se ele pode dirigir ou não. Implemente o código para fazer essa verificação.

 */