void main() {
  ContaCorrente contaLucas = ContaCorrente("Lucas", 1000);
  ContaPoupanca contaThor = ContaPoupanca("Thor", 1000);

  print('===============================================\n');
  contaLucas.imprimirSaldo();
  contaThor.imprimirSaldo();
  print('\n===============================================\n');
}

/* CONTA */

abstract class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receberValor(double valor) {
    this._saldo += valor;
    print('Valor de $valor recebido com sucesso!');
  }

  void enviarValor(double valor) {
    if (this._saldo >= valor) {
      this._saldo -= valor;
      print('Valor de $valor enviado com sucesso!');
    }
  }

  void imprimirSaldo() {
    print('Titular: $titular - Saldo: $_saldo');
  }
}

/* CONTA CORRENTE */
class ContaCorrente extends Conta {
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviarValor(double valor) {
    // TODO: implement enviarValor
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      print("Valor de $valor enviado com sucesso!");
    }
  }
}

/* CONTA POUPANÇA */
class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calcularRendimento() {
    _saldo += _saldo * rendimento;
  }
}
