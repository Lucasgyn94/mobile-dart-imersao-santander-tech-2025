void main() {
  Cachorro c1 = Cachorro();
  c1.emitirSom();
  c1.abanarRabo();

  Gato g1 = Gato();
  g1.emitirSom();
  g1.arranharMoveis();
}

class Animal {
  void emitirSom() {
    print('Animal emitindo som!');
  }
}

class Cachorro extends Animal {
  @override
  void emitirSom() {
    // TODO: implement emitirSom
    print('O cachorro late!');
  }

  void abanarRabo() {
    print('O cachorro está abanando o rabo!');
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    // TODO: implement emitirSom
    print('O gato miou.');
  }

  void arranharMoveis() {
    print('O gato está arranhando os móveis.');
  }
}
