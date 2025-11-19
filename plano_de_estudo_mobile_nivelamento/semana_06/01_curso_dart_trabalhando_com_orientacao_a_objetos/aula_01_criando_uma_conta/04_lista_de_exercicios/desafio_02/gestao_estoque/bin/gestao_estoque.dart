void main() {

  ItemEstoque smartphone = ItemEstoque("Smartphone", 100);
  ItemEstoque notebook = ItemEstoque("Notebook", 50);

  print(
    'Produto: ${smartphone.nome}, Quantidade em estoque: ${smartphone.quantidade}',
  );

  print(
    'Produto: ${notebook.nome}, Quantidade em estoque: ${notebook.quantidade}',
  );


  print(
    '\nRegistrando entrada de 20 unidade para "smartphone" e \nsaída de 10 unidades do "notebook"',
  );

  smartphone.entrada(20);
  notebook.saida(10);


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
2. Implementando operações de entrada e saída de estoque
Agora que criou a classe ItemEstoque, você precisa adicionar funcionalidades para registrar entradas e saídas de produtos no estoque. Implemente métodos dentro da classe ItemEstoque para realizar essas operações. Teste esses métodos registrando uma entrada de 20 unidades para o "Smartphone" e uma saída de 10 unidades do "Notebook". Por último, imprima as novas quantidades em estoque no terminal.
 */
