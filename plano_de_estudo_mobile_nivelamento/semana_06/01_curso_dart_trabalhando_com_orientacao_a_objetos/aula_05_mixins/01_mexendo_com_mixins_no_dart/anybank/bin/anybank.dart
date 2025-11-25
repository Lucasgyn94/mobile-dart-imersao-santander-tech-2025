import 'package:anybank/conta.dart';
import 'package:anybank/contaCorrente.dart';
import 'package:anybank/contaEmpresa.dart';
import 'package:anybank/contaPoupanca.dart';

void main() {
  ContaCorrente contaLucas = ContaCorrente("Lucas", 1000);
  ContaPoupanca contaThor = ContaPoupanca("Thor", 1000);
  ContaEmpresa contaEmpresa01 = ContaEmpresa("LUCAS ENTERPRISES", 2999.99);

  print('===============================================\n');
  // contaLucas.imprimirSaldo();
  // contaThor.imprimirSaldo();
  contaEmpresa01.imprimirSaldo();
  contaEmpresa01.enviarValor(1500);
  contaEmpresa01.imprimirSaldo();

  print('\n===============================================\n');
}
