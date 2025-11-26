import 'package:anybank/conta.dart';

class ContaCorrente extends Conta {
  double emprestimo = 300;

  ContaCorrente(super.titular, super.saldo);

  @override
  void enviarValor(double valor) {
    // TODO: implement enviarValor
    if (saldo + emprestimo >= valor) {
      saldo -= valor;
      print("Valor de $valor enviado com sucesso!");
  
    }
  }
}