class Cliente {
  String nome;
  List<String> _reservas;

  Cliente(this.nome, this._reservas);

  void reservarQuarto(String quarto) {
    _reservas.add(quarto);
    print('Quarto ${quarto} reservado com sucesso!');
  }

  void imprimirReservas() {
    print('Cliente: ${nome} - Reservas: ${_reservas}');
  }

  void cancelarReserva(String quarto) {
    if (this._reservas.contains(quarto)) {
      this._reservas.remove(quarto);
      print('Quarto ${quarto} cancelado com sucesso!');
    }
  }
}
