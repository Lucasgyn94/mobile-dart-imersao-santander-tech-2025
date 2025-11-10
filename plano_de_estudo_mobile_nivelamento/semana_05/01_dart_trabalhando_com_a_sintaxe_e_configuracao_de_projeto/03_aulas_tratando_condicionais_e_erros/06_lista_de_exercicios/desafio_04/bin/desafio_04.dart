import 'dart:io';

String? entrada = "";
void main() {

  print("### VERIFICADOR MAIOR IDADE ###");
  print("Em qual país você vive atualmente? Brasil, EUA ou Japão?");
  entrada = stdin.readLineSync();
  String? paisAtual = entrada;
  
  if (paisAtual == null) {
    exit(0);
  }

  print("E qual sua idade?");
  entrada = stdin.readLineSync();
  int idadeAtual = int.parse(entrada!);

  if ((paisAtual == "Brasil") || (paisAtual.startsWith(""))) {
    if (idadeAtual >= 18) {
      print("Você tem $idadeAtual anos de idade e pode dirigir!");
    } else {
      print("Você tem $idadeAtual anos de idade e não pode dirigir!");
    }

  } else if (paisAtual == "EUA") {
    if (idadeAtual >= 16) {
      print("Você tem $idadeAtual anos de idade e pode dirigir!");
    } else {
      print("Você tem $idadeAtual anos de idade e não pode dirigir!");
    }
  }else if (paisAtual == "Japão") {
    if (idadeAtual >= 20) {
      print("Você tem $idadeAtual anos de idade e pode dirigir!");
    } else {
      print("Você tem $idadeAtual anos de idade e não pode dirigir!");
    }
  } else {
    print("Erro!");
  }


  

}

/*
## 4) Verificando a maioridade em diferentes países
Escreva um programa que verifica a maioridade para dirigir em diferentes países. O programa deve solicitar ao usuário que insira sua idade e o país em que ele se encontra (por exemplo, Brasil, EUA, Japão) e informar se ele pode dirigir ou não, com base na legislação de cada país.

Utilize as idades mínimas de 18 anos para o Brasil, 16 anos para os EUA e 20 anos para o Japão.

 */