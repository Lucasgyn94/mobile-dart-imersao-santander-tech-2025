void main() {
  Conta contaLucas = Conta("Lucas", 1000);
  Conta contaThor = Conta("Thor", 100);

  List<Conta> contas = <Conta>[contaLucas, contaThor];

  for (Conta c in contas) {
    print('${c.titular} - ${c.saldo}');
  }

  print('\n===============================================\n');

  contaLucas.receberValor(500);
  contaThor.receberValor(999);

  for (Conta c in contas) {
    print('${c.titular} - ${c.saldo}');
  }
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

  void receberValor(double valor) {
    this.saldo += valor;
  }

  void enviarValor(double valor) {
    this.saldo -= valor;
  }
}
