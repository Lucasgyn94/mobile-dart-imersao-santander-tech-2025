void main() {
  Cachorro c1 = Cachorro();
  c1.emitirSom();
  c1.abanarRabo();

  Gato g1 = Gato();
  g1.emitirSom();
  g1.arranharMoveis();
}

abstract class Animal {
  void emitirSom();
}

class Cachorro implements Animal {
  @override
  void emitirSom() {
    // TODO: implement emitirSom
    print('O cachorro late!');
  }

  void abanarRabo() {
    print('O cachorro está abanando o rabo!');
  }
}

class Gato implements Animal {
  @override
  void emitirSom() {
    // TODO: implement emitirSom
    print('O gato miou.');
  }

  void arranharMoveis() {
    print('O gato está arranhando os móveis.');
  }
}
