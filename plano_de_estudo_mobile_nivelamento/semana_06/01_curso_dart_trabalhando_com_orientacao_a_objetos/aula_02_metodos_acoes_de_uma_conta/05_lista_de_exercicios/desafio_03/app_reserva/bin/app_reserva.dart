import 'package:app_reserva/cliente.dart';

void main() {
  Cliente c = Cliente('Lucas', []);
  c.reservarQuarto("q1");
  c.reservarQuarto("q2");

  print('================================================\n');
  print('Cliente: ${c.nome} - Reservas: ${c.reservas}');

  print('\n==============================================');
  print('CANCELAMENTO DE QUARTO');
  c.cancelarReserva("q1");
  print('Cliente: ${c.nome} - Reservas: ${c.reservas}');
}
