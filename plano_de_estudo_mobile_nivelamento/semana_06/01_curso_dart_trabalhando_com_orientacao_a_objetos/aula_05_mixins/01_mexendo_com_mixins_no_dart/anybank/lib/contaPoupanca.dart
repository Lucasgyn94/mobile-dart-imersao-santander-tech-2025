import 'package:anybank/conta.dart';

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super.saldo);

  void calcularRendimento() {
    saldo += saldo * rendimento;
  }
}
