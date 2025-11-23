void main() {}

class Ingrediente {
  String nome;
  String tipo;

  Ingrediente(this.nome, this.tipo);
  
  void detalhes() {
    print('$nome - $tipo');
  }
}

/*
7. Implementando uma classe de ingrediente
Considere que você precisa criar um programa que registra ingredientes de receitas e informações sobre eles. O primeiro passo é implementar a classe Ingrediente, que terá as seguintes características (atributos) e ações (métodos):

string nome: armazena o nome de um ingrediente (por exemplo, cebola);
string tipo: armazena o tipo de ingrediente (por exemplo, fruta, legume ou tempero).
Método detalhes(): printa o nome e o tipo do ingrediente.
A ideia é apenas criar a classe. Não se preocupe em printar nada no terminal por enquanto!

Vamos lá?
 */
