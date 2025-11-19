void main() {
  Conta contaLucas = Conta("Lucas", 1000);
  Conta contaThor = Conta("Thor", 100);

  List<Conta> contas = <Conta>[contaLucas, contaThor];

  print(contaLucas.titular);
  print(contaLucas.saldo);

  print("\nModificando saldo da conta de ${contaLucas.titular}\n");
  contaLucas.saldo = 5000;

  print(contaLucas.titular);
  print(contaLucas.saldo);

  print("\nImpressão com laço for\n");

  for (Conta c in contas) {
    print(c.titular);
    print(c.saldo);
  }
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}
