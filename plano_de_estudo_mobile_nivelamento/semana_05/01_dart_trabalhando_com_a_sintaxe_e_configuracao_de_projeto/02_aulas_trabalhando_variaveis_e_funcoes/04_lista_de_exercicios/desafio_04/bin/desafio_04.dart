import 'dart:io';

void main() {
  print("### Calculadora de Salário Freelas ###");
  print("Digite a quantidade de horas trabalhadas");
  double quantidadeHoras = double.parse(stdin.readLineSync()!);
  double percentualDesconto = 0.05;
  double salarioPorHora = 50.00;

  double desconto = (quantidadeHoras * salarioPorHora * percentualDesconto);
  double salarioTotal = (quantidadeHoras * salarioPorHora) - desconto;
  print("Desconto: R\$ $desconto");
  print("Salário: R\$ $salarioTotal");
  print(salarioTotal);
  
}

/*
4) Calculando o salário do freela
Você foi contratado para um trabalho freelance. Crie um programa que lê as horas trabalhadas e calcula o salário líquido, considerando:

A empresa paga 50 reais por hora trabalhada;
O desconto do salário é de 5% e deve ser subtraído do salário bruto.
Veja um exemplo de como o programa deve ficar no terminal:

Digite o número de horas trabalhadas:
100
O salário líquido é R$ 4750.0.
 */