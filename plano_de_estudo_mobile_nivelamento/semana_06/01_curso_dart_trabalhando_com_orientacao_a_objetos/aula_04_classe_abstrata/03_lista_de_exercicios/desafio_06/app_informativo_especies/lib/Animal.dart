import 'package:app_informativo_especies/SerVivo.dart';

class Animal extends SerVivo {
  int mediaDeVida;

  Animal(super.nome, super.tipo, this.mediaDeVida);

  @override
  void mostrarCaracteristicas() {
    // TODO: implement mostrarCaracteristicas
    print('$nome: tem cinco sentidos, pensa e fala, é $tipo e vive em média $mediaDeVida anos.');
  }
}
