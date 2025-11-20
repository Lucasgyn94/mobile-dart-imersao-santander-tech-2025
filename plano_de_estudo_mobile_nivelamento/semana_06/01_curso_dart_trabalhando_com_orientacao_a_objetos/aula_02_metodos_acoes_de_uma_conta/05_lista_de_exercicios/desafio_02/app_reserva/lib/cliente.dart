class Cliente {
  String nome;
  List<String> reservas;

  Cliente(this.nome, this.reservas);

  void reservarQuarto(String quarto) {
    reservas.add(quarto);
    imprimirReservas();
  }

  void imprimirReservas() {
    print('Reserva: ${this.reservas}');
  }

}
