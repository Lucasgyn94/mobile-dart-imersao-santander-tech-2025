void main() {
  Fruta banana = Fruta("Banana", "Fruta");
  print('Ingrediente: ${banana.nome}');
  print('Tipo: ${banana.tipo}');
  banana.detalhes();
}

class Ingrediente {
  String nome;
  String tipo;

  Ingrediente(this.nome, this.tipo);

  void detalhes() {
    print('$nome - $tipo');
  }
}

class Fruta extends Ingrediente {
  Fruta(super.nome, super.tipo);

  @override
  void detalhes() {
    // TODO: implement detalhes
    print("Em geral, são vegetais que não podem ser cozidos nas receitas");
  }
}

class Legume extends Ingrediente {
  Legume(super.nome, super.tipo);

  @override
  void detalhes() {
    // TODO: implement detalhes
    print("Em geral, são vegetais que precisam ser cozidos");
  }
}

class Tempero extends Ingrediente {
  Tempero(super.nome, super.tipo);

  @override
  void detalhes() {
    // TODO: implement detalhes
    print("São especiarias que condimentam os alimentos.");
  }
}

/*
8. Implementando as classes de tipos de ingrediente
Vamos continuar o programa de receitas. Agora que você concluiu a classe abstrata Ingrediente, vamos usá-la de molde para criar três classes de tipos de ingrediente:

Fruta: em geral, são vegetais que não podem ser cozidos nas receitas;
Legume: em geral, são vegetais que precisam ser cozidos;
Tempero: são especiarias que condimentam os alimentos.
Ao criar as três classes, aplique a herança e polimorfismo. Sobrescreva o método detalhes() em cada uma das classes. Por exemplo, em Fruta, você pode inserir um print “em geral, são vegetais que não podem ser cozidos nas receitas” e assim por diante.

Por fim, crie os objetos banana (de Fruta), cenoura (de Legume) e sal (de Tempero) e os métodos para exibir suas informações e detalhes. O print no terminal pode ser algo assim:

```
Ingrediente: Banana
Tipo: Fruta
Detalhe: As frutas geralmente não são cozidas nas receitas.      

Ingrediente: Cenoura
Tipo: Legume
Detalhe: Os legumes geralmente precisam ser cozidos nas receitas.

Ingrediente: Sal
Tipo: Tempero
Detalhe: Os temperos são usados para condimentar os alimentos.
```
*/
