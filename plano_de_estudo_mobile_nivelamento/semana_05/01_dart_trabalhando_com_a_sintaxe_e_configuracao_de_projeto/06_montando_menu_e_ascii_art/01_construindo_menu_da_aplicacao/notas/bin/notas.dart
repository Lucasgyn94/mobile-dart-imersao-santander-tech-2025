import 'dart:io';

void menu(List<String> notas) {
  String comando = capturarOpcaoUsuario();

  switch (comando) {
    case "1":
      adicionarNota(notas);
      menu(notas);
      break;
    case "2":
      imprimirNotas(notas);
      menu(notas);
      break;
    case "3":
      print("Até breve");
      break;
  }
}

void imprimirNotas(List<String> notas) {
  for (int i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

List<String> adicionarNota(List<String> notas) {
  print("Escreva uma nota a ser adicionada: ");
  String? nota = "";

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Não é possível adicionar uma nota vazia");
    adicionarNota(notas);
  }

  notas.add(nota!);
  print("Nota - $nota - adicionado com sucesso!");
  return notas;
}

String capturarOpcaoUsuario() {
  List<String> comandos = <String>["1", "2", "3"];

  print("Digite um comando: ");
  print("1- Adicionar Nota");
  print("2 - Listar Notas");
  print("3 - Sair");

  String? entrada = "";
  entrada = stdin.readLineSync();

  if ((entrada == null) || (!comandos.contains(entrada))) {
    print("Comando inválido1");
    capturarOpcaoUsuario();
  }

  return entrada!;
}

void main() {
  List<String> notas = <String>[];
  menu(notas);
}
