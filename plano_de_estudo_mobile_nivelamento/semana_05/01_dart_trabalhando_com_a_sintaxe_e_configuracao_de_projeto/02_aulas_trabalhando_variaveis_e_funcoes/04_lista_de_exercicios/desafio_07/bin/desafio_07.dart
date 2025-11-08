import 'dart:io';

double subtrairPontos(double pontosIniciais, double pontosRetirados) {
  double pontosRestantes = pontosIniciais - pontosRetirados;
  return pontosRestantes;
}

void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  pontosRetirados = double.parse(stdin.readLineSync()!);
  
  var pontosRestantes = subtrairPontos(pontosIniciais, pontosRetirados);

  print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes restantes.");
}

/*
7) Refatorando o código do clube de benefícios com função
Se você resolveu o exercício anterior, agora refatore (modifique) o código, colocando a funcionalidade de subtração de pontos dentro de uma função.

Vamos lá?


 */