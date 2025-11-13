import 'dart:io';

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
  capturarOpcaoUsuario();
}
