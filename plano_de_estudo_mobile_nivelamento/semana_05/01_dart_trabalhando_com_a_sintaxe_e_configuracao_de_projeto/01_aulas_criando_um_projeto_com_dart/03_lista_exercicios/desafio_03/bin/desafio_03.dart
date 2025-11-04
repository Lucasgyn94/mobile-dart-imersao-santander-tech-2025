import 'dart:io';

void main() {
  print("Olá. Qual o seu nome?");
  String? nome = stdin.readLineSync();
  print("E qual a sua idade?");
  String? idade = stdin.readLineSync();
  int idadeConvert = int.parse(idade!);

  print("Olá $nome, você tem $idadeConvert anos!");
}