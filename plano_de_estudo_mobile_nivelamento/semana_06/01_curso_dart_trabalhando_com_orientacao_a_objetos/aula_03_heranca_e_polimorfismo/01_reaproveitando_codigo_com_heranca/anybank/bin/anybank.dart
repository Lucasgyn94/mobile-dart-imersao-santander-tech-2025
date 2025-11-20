import 'package:anybank/contaCorrente.dart';
import 'package:anybank/contaPoupanca.dart';

void main() {
  ContaCorrente contaLucas = ContaCorrente("Lucas", 1100);
  ContaPoupanca contaThor = ContaPoupanca("Thor", 800);

  print('===============================================\n');

  contaLucas.imprimirSaldo();
  contaThor.imprimirSaldo();

  contaThor.enviarValor(300);
  contaLucas.enviarValor(300);

  contaLucas.imprimirSaldo();
  contaThor.imprimirSaldo();


  print('\n===============================================\n');
}
