abstract class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  double get saldo => _saldo;
  set saldo(double valor) => _saldo = valor;

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
