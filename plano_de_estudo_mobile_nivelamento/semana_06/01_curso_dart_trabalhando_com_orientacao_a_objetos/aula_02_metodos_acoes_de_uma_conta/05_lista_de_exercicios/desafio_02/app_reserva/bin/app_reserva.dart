import 'package:app_reserva/cliente.dart';

void main() {
  Cliente c = Cliente("Lucas", []);
  c.reservarQuarto("quarto 1");
  c.reservarQuarto("quarto 2");
  print('================================================\n');
  print('Cliente: ${c.nome} - Reservas: ${c.reservas}');
}
