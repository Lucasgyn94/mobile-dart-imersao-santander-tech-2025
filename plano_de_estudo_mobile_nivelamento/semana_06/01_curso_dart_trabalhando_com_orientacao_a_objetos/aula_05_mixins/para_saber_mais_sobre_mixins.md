## 1. O que são mixins?
* __Mixins__ são uma forma de reutilizar código em Dart sem a necessidade de criar uma hierarquia de herança complexa. É como adicionar uma característica sem precisar de uma implementação complicada de superclasses. Pense que você cria um pequeno trecho de código que pode ser reaproveitado para executar alguma coisa dentro do código.

## 2. Por que usar mixins?
  * Podemos compartilhar comportamentos entre classes sem criar uma hierarquia rígida;
  * Mixins permitem combinar diferentes características em uma única classe. Funciona quase como __múltiplas heranças__.
Vamos ver um exemplo com código relacionado à habilidades:
```
mixin HabilidadeVoar {
  void voar() {
    print('Estou voando!');
  }
}

mixin HabilidadeNadar {
  void nadar() {
    print('Estou nadando!');
  }
}

class Pessoa {
  String nome;

  Pessoa(this.nome);
}

class SuperHeroi extends Pessoa with HabilidadeVoar, HabilidadeNadar {
  SuperHeroi(String nome) : super(nome);
}

void main() {
  SuperHeroi superHeroi = SuperHeroi('Super');
  superHeroi.voar();
  superHeroi.nadar();
}
```

  * * Nos __mixins HabilidadeVoar e HabilidadeNadar__, definimos as habilidades de voar e nadar (que são métodos);
  * A __classe Pessoa__ representa uma pessoa comum;
  * A __classe SuperHeroi__ herda de Pessoa e utiliza os mixins HabilidadeVoar e HabilidadeNadar. Ou seja, temos um super-herói que é uma pessoa que pode voar e nadar;
  * Usamos a palavra-chave __with__ para "misturar" ou "adicionar" os mixins à classe.

* Percebe como os mixins são pequenos trechos de códigos que adicionam funcionalidades a uma classe? Perceba que reutilizamos os mixins para adicionar métodos em uma classe. Porém o modo como um mixin faz isso é mais flexível e aberto se compararmos com a herança de uma classe comum.

* Os mixins complementam a herança tradicional, permitindo que você crie classes mais completas sem lidar com heranças complexas. Haverá casos mais simples em que você utilizará mixins; em outras situações mais complexas e que exijam mais ordem e estrutura no código, talvez seja melhor recorrer à velha e boa herança (ou interface).

### Importante:

  * Mixins não podem ter construtores;
  * A ordem dos mixins importa, pois pode haver conflitos de nomes.
