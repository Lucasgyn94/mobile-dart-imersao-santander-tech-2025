import 'dart:io';

void main() {
  List<String> categoriaProdutos = <String>[
    "eletronicos",
    "alimentos",
    "vestuario",
    "livros",
  ];

  print(
    "Digite a categoria do produto (eletronicos, alimentos, vestuario, livros):",
  );
  String? entrada = stdin.readLineSync();

  if (categoriaProdutos.contains(entrada)) {
    print("Categoria válida: $entrada");
  } else {
    print("Categoria não válida: $entrada");
  }
}
