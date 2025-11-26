import 'package:anybank/conta.dart';
import 'package:anybank/contaCorrente.dart';
import 'package:anybank/contaEmpresa.dart';
import 'package:anybank/contaInvestimeto.dart';
import 'package:anybank/contaPoupanca.dart';

void main() {
  ContaCorrente contaLucas = ContaCorrente("Lucas", 1000);
  ContaPoupanca contaThor = ContaPoupanca("Thor", 1000);
  ContaEmpresa contaEmpresa01 = ContaEmpresa("LUCAS ENTERPRISES", 2999.99);
  ContaInvestimeto contaInvestimeto01 = ContaInvestimeto("Roberta", 1000.00);
  print('===============================================\n');
  // contaLucas.imprimirSaldo();
  // contaThor.imprimirSaldo();
  contaInvestimeto01.enviarValor(500);
  contaEmpresa01.receberValor(1005.00);

  print('\n===============================================\n');
}
