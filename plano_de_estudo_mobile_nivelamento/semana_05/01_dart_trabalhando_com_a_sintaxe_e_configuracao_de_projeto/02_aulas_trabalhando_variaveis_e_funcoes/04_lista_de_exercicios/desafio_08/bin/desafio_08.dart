import 'dart:io';

void main() {
  print("Qual valor gasto em compras no supermercado?");
  var entradaUsuario = stdin.readLineSync();
  var valorGasto = double.parse(entradaUsuario!);
  var cupons = (valorGasto / 50).floor();

  print("O cliente receberá $cupons cupons para esta compra");


}

/*
8) Implementando um programa de cupons
Escreva um programa que informa quantos cupons um cliente ganhou ao fazer compras no mercado No Precinho. A regra da promoção é: a cada 50 reais gastos por compra, a pessoa recebe um cupom. O programa deve:

Capturar a entrada com o valor gasto;
Exibir mensagem de quantos cupons foram ganhos.
Vamos lá?
 */