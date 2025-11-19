void main() {
  Conta c1 = Conta("Lucas", 1000);
}

class Conta {
  String nome;
  double saldo;

  Conta(this.nome, this.saldo);
}

/*A FORMA ABAIXO SERIA UMA IDEIA, PORÉM NÃO E MUITO REUTILIZAVEL */
// class ContaLucas {
//   String titular = "Lucas";
//   double saldo = 1000;
// }

// class ContaThor {
//   String titular = "Thor";
//   double saldo = 900;
// }
