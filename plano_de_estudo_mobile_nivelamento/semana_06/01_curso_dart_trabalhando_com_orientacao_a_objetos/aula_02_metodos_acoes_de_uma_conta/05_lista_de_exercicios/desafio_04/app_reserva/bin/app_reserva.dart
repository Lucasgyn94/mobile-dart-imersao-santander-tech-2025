import 'package:app_reserva/cliente.dart';

void main() {
  Cliente c1 = Cliente('Lucas', []);
  c1.reservarQuarto("q1");
  c1.reservarQuarto("q2");
  c1.reservarQuarto("q3");
  c1.reservarQuarto("q4");
  c1.imprimirReservas();
  c1.cancelarReserva("q4");
  c1.imprimirReservas();

  // print('================================================\n');
  // print('Cliente: ${c.nome} - Reservas: ${reservas}');

  // print('\n==============================================');
  // print('CANCELAMENTO DE QUARTO');
  // c.cancelarReserva("Quarto 1");
  // print('Cliente: ${c.nome} - Reservas: ${reservas}');
}
