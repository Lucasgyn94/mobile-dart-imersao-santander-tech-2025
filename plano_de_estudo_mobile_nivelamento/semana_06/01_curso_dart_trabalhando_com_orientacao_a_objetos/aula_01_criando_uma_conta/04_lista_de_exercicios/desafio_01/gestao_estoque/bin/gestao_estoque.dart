void main() {
  ItemEstoque smartphone = ItemEstoque("Smartphone", 100);
  ItemEstoque notebook = ItemEstoque("Notebook", 50);

  print(
    'Produto: ${smartphone.nome}, Quantidade em estoque: ${smartphone.quantidade}',
  );

  print(
    'Produto: ${notebook.nome}, Quantidade em estoque: ${notebook.quantidade}',
  );

}

class ItemEstoque {
  String nome;
  int quantidade;

  ItemEstoque(this.nome, this.quantidade);
}

/*
1. Criando uma classe para itens de estoque
Você trabalha no time de desenvolvimento de um sistema de gestão de estoque para uma loja de eletrônicos. Sua tarefa é criar uma classe chamada ItemEstoque que deverá armazenar informações sobre o nome do produto e a quantidade em estoque. Em seguida, você deve instanciar dois itens: um para "Smartphone", com 100 unidades em estoque, e outro para "Notebook", com 50 unidades. Por fim, você deve imprimir as informações desses itens no terminal.

O print no terminal deve ser algo parecido com isto:

Produto: Smartphone, Quantidade em estoque: 100
Produto: Notebook, Quantidade em estoque: 50
 */
