void main() {
  Conta contaLucas = Conta("Lucas", 1000);
  Conta contaThor = Conta("Thor", 100);

  List<Conta> contas = <Conta>[contaLucas, contaThor];

  for (Conta c in contas) {
    print('${c.titular} - ${c.saldo}');
  }

  print('\n===============================================\n');

  receberValor(contaLucas, 500);
  receberValor(contaThor, 2000);

  for (Conta c in contas) {
    print('${c.titular} - ${c.saldo}');
  }
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);

}

void receberValor(Conta conta, double valor) {
  conta.saldo += valor;
}

void enviarValor(Conta conta, double valor) {
  conta.saldo -= valor;
}