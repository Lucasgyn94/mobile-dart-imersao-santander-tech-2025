import 'dart:io';

void listarAlunos(List<String> nomes, List<List<double>> notas) {
  print("### LISTA DE ALUNOS E MÉDIAS ###");
  for (int i = 0; i < nomes.length; i++) {
    double media = calcularMediaNota(notas[i]);
    print("Aluno: ${nomes[i]} - \nMédia: ${media.toStringAsFixed(2)}");
  }
}

double calcularMediaNota(List<double> notas) {
  double soma = 0;
  for (double nota in notas) {
    soma += nota;
  }

  return soma / notas.length;
}

void registraAluno(List<String> nomes, List<List<double>> notas) {
  print("Digite o nome do aluno: ");
  String? nome = stdin.readLineSync();

  if (nome != null) {
    nomes.add(nome);

    List<double> notasAluno = [];

    String? entrada = "";

    while (entrada != "fim") {
      print('Digite uma nota para o aluno (ou "fim" para terminar):');
      entrada = stdin.readLineSync();

      if (entrada == "fim") {
        break;
      } else if (entrada != null) {
        double nota = double.parse(entrada);
        notasAluno.add(nota);
      }
    }
    notas.add(notasAluno);
  } else {
    print("Nome inválido!");
  }
}

String capturarOpcaoUsuario() {
  cabecalho();
  List<String> opcoes = <String>["1", "2", "3"];

  print("Digite uma opção: ${opcoes.toList()}");
  print("1 - Registrar um aluno e sua nota");
  print("2 - Ver a lista de todos alunos registrados e suas médias escolares");
  print("3 - Sair do programa.");

  String? entrada = "";
  entrada = stdin.readLineSync();

  if ((entrada == null) || (!opcoes.contains(entrada))) {
    print("Entrada inválida!");
    capturarOpcaoUsuario();
  }

  return entrada!;
}

void menu(String opcaoUsuario, List<String> nomes, List<List<double>> notas) {
  switch (opcaoUsuario) {
    case "1":
      registraAluno(nomes, notas);
      break;
    case "2":
      listarAlunos(nomes, notas);
      break;
    case "3":
      print("Encerrando programa...");
      break;
  }
}

void cabecalho() {
  print(
    "  _____ ____ _____ ______    ___  ___ ___   ____      ___      ___                                   ",
  );
  print(
    " / ___/|    / ___/|      |  /  _]|   |   | /    |    |   \\    /  _]                                  ",
  );
  print(
    "(   \\_  |  (   \\_ |      | /  [_ | _   _ ||  o  |    |    \\  /  [_                                   ",
  );
  print(
    " \\__  | |  |\\__  ||_|  |_||    _]|  \\_/  ||     |    |  D  ||    _]                                  ",
  );
  print(
    " /  \\ | |  |/  \\ |  |  |  |   [_ |   |   ||  _  |    |     ||   [_                                   ",
  );
  print(
    " \\    | |  |\\    |  |  |  |     ||   |   ||  |  |    |     ||     |                                  ",
  );
  print(
    "  \\___||____|\\___|  |__|  |_____||___|___||__|__|    |_____||_____|                                  ",
  );
  print(
    "                                                                                                     ",
  );
  print(
    "  ____    __   ___   ___ ___  ____   ____  ____   __ __   ____  ___ ___    ___  ____   ______   ___  ",
  );
  print(
    " /    |  /  ] /   \\ |   |   ||    \\ /    ||    \\ |  |  | /    ||   |   |  /  _]|    \\ |      | /   \\ ",
  );
  print(
    "|  o  | /  / |     || _   _ ||  o  )  o  ||  _  ||  |  ||  o  || _   _ | /  [_ |  _  ||      ||     |",
  );
  print(
    "|     |/  /  |  O  ||  \\_/  ||   _/|     ||  |  ||  _  ||     ||  \\_/  ||    _]|  |  ||_|  |_||  O  |",
  );
  print(
    "|  _  /   \\_ |     ||   |   ||  |  |  _  ||  |  ||  |  ||  _  ||   |   ||   [_ |  |  |  |  |  |     |",
  );
  print(
    "|  |  \\     ||     ||   |   ||  |  |  |  ||  |  ||  |  ||  |  ||   |   ||     ||  |  |  |  |  |     |",
  );
  print(
    "|__|__|\\____| \\___/ |___|___||__|  |__|__||__|__||__|__||__|__||___|___||_____||__|__|  |__|   \\___/ ",
  );
  print(
    "                                                                                                     ",
  );
  print(
    "   ___  _____   __   ___   _       ____  ____                                                        ",
  );
  print(
    "  /  _]/ ___/  /  ] /   \\ | |     /    ||    \\                                                       ",
  );
  print(
    " /  [_(   \\_  /  / |     || |    |  o  ||  D  )                                                      ",
  );
  print(
    "|    _]\\__  |/  /  |  O  || |___ |     ||    /                                                       ",
  );
  print(
    "|   [_ /  \\ /   \\_ |     ||     ||  _  ||    \\                                                      ",
  );
  print(
    "|     |\\    \\     ||     ||     ||  |  ||  .  \\                                                      ",
  );
  print(
    "|_____| \\___|\\____| \\___/ |_____||__|__||__|\\_|                                                      ",
  );
  print(
    "                                                                                                     ",
  );
}

void main() {
  List<String> nomes = [];
  List<List<double>> notas = [];

  String opcaoUsuario = "";

  while (opcaoUsuario != "3") {
    opcaoUsuario = capturarOpcaoUsuario();

    menu(opcaoUsuario, nomes, notas);

    if (opcaoUsuario != "3") {
      print("Pressione [ENTER] para continuar!");
      stdin.readLineSync();
    }
  }
}
