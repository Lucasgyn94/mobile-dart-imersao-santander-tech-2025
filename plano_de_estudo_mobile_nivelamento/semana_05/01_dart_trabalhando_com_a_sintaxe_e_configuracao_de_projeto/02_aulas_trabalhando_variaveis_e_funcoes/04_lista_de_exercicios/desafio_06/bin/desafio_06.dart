import 'dart:io';

void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  pontosRetirados = double.parse(stdin.readLineSync()!);
  
  double pontosRestantes = pontosIniciais - pontosRetirados;

  print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
}

/*
6) Identificando e corrigindo tipos no Dart
Chegou nas suas mãos um programa de retirada de pontos de um clube de benefícios.

A lógica deve ser a seguinte:

Os pontos iniciais começam no valor 100;
O programa inicia com uma mensagem: “*Você tem [x] pontos.*”;
Em seguida, exibe a mensagem: “*Quantos pontos você gostaria de resgatar?*”;
O usuário digita quantos [y] pontos deseja retirar;
O programa faz uma subtração (pontos iniciais [100] - pontos retirados [y]);
Por fim, mostra uma mensagem que informa: “Você resgatou [y] pontos. Pontos restantes: [z].””
Você já tem esse código pronto:

import 'dart:io';

void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontos pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  
  string pontosRestantes = pontosIniciais - pontosRetirados;

  print("Você resgatou $quantidade pontos. Pontos restantes: $pontos.");
}
Copiar código
Após atentamente ler o código, faça os ajustes para que o programa funcione adequadamente no terminal do seu VSCode.


 */