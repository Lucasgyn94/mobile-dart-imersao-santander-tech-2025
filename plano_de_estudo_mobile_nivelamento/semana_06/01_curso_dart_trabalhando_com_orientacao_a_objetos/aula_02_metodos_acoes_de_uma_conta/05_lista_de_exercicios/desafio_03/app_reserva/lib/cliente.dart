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

  void cancelarReserva(String quarto) {
    if (this.reservas.contains(quarto)) {
      this.reservas.remove(quarto);
      imprimirReservas();
    }
  }
}
