import 'package:anybank/conta.dart';
import 'package:anybank/imposto.dart';

class ContaInvestimeto extends Conta with Imposto {
  ContaInvestimeto(super.titular, super.saldo);

  @override
  void enviarValor(double valor) {
    // TODO: implement enviarValor
    if (saldo >= valor + valorTaxado(valor)) {
      saldo -= valor + valorTaxado(valor);
      imprimirSaldo();
    }
  }

  @override
  void receberValor(double valor) {
    // TODO: implement receberValor
    saldo += valor - valorTaxado(valor);
    imprimirSaldo();
  }
}
