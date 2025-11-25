import 'package:app_informativo_especies/SerVivo.dart';

class Planta extends SerVivo {
  Planta(super.nome, super.tipo);

  @override
  void mostrarCaracteristicas() {
    // TODO: implement mostrarCaracteristicas
    print('$nome: é uma planta, não tem os cinco sentidos, é uma $tipo.');
  }
}
