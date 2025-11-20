class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receberValor(double valor) {
    this._saldo += valor;
    imprimirSaldo();
  }

  void enviarValor(double valor) {
    if (this._saldo >= valor) {
      this._saldo -= valor;
      imprimirSaldo();
    }
  }

  void imprimirSaldo() {
    print('O saldo de ${titular} é: ${_saldo}');
  }
}
