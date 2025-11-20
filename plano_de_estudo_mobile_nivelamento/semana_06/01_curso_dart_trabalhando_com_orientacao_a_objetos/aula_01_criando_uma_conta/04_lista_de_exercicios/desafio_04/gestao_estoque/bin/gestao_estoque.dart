void main() {
  ItemEstoque smartphone = ItemEstoque("Smartphone", 10, 999);
  ItemEstoque liquidificador = ItemEstoque("Liquidificador", 20, 399);
  ItemEstoque tablet = ItemEstoque("Tablet", 30, 899);

  print('===========================================================\n');
  print('${smartphone.nome} - ${smartphone.quantidade} - ${smartphone.preco} ');
  print(
    '${liquidificador.nome} - ${liquidificador.quantidade} - ${liquidificador.preco} ',
  );
  print('${tablet.nome} - ${tablet.quantidade} - ${tablet.preco} ');

  print('\n===========================================================');

  print("ALTERANDO PREÇOS\n");
  smartphone.atualizarPreco(1.999);
  liquidificador.atualizarPreco(299);
  tablet.atualizarPreco(999);

  print('===========================================================\n');
  print('${smartphone.nome} - ${smartphone.quantidade} - ${smartphone.preco} ');
  print(
    '${liquidificador.nome} - ${liquidificador.quantidade} - ${liquidificador.preco} ',
  );
  print('${tablet.nome} - ${tablet.quantidade} - ${tablet.preco} ');

  print('\n===========================================================');
}

class ItemEstoque {
  String nome;
  int quantidade;
  double preco;

  ItemEstoque(this.nome, this.quantidade, this.preco);

  void entrada(int quantidade) {
    this.quantidade += quantidade;
  }

  void saida(int quantidade) {
    this.quantidade -= quantidade;
  }

  void atualizarPreco(double preco) {
    this.preco = preco;
  }
}

/*
4. Atualizando o preço dos itens
Agora que você já tem um controle de estoque, vamos acrescentar mais uma funcionalidade ao sistema: o controle de preços dos produtos. Sua tarefa é adicionar um novo atributo preco à classe ItemEstoque. Em seguida, implemente um método que permita alterar o preço de um item específico. Crie três itens, defina seus preços iniciais e depois altere o preço de um deles. Por fim, imprima o nome do produto, sua quantidade em estoque e o preço atualizado.
 */
