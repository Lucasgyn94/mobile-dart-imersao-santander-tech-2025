void main() {
  ItemEstoque smartphone = ItemEstoque("Smartphone", 100);
  ItemEstoque notebook = ItemEstoque("Notebook", 50);
  ItemEstoque tablet = ItemEstoque("Tablet", 20);

  List<ItemEstoque> itens = <ItemEstoque>[smartphone, notebook, tablet];

  for (ItemEstoque i in itens) {
    print('Produto: ${i.nome}, Quantidade em estoque: ${i.quantidade}');
  }

  print(
    '\nRegistrando entrada de 20 unidade para "smartphone" e \nsaída de 10 unidades do "notebook"',
  );

  smartphone.entrada(20);
  notebook.saida(10);

  print("\nItens após entrada e saída\n");
  for (ItemEstoque i in itens) {
    print('Produto: ${i.nome}, Quantidade em estoque: ${i.quantidade}');
  }
}

class ItemEstoque {
  String nome;
  int quantidade;

  ItemEstoque(this.nome, this.quantidade);

  void entrada(int quantidade) {
    this.quantidade += quantidade;
  }

  void saida(int quantidade) {
    this.quantidade -= quantidade;
  }
}

/*
3. Gerenciando múltiplos itens de estoque
Você percebeu que a loja possui muitos produtos. Sua tarefa agora é fazer uma lista que armazena várias instâncias da classe ItemEstoque. Em seguida, implemente um laço de repetição que percorra essa lista e imprima as informações de cada item em estoque. Para testar, crie pelo menos três itens com diferentes produtos e quantidades, adicione-os à lista e exiba os detalhes de todos os itens cadastrados.
 */
