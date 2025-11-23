void main() {
  QuartoSimples qs1 = QuartoSimples(1);
  QuartoMedio qm1 = QuartoMedio(1);
  QuartoLuxo ql1 = QuartoLuxo(1);

  qs1.reservarQuarto();
  qm1.reservarQuarto();
  ql1.reservarQuarto();

  qm1.servirCafeDaManha();
  ql1.servirCafeDaManha();

  ql1.solicitarServicoDeQuarto();
}

class Quarto {
  String tipoQuarto;
  double valorDiaria;
  int quantidadeDiarias;

  Quarto(this.tipoQuarto, this.valorDiaria, this.quantidadeDiarias);

  void reservarQuarto() {
    print(
      'Reserva no quarto $tipoQuarto por $quantidadeDiarias dia(s) no valor de R\$$valorDiaria efetuada com sucesso!',
    );
  }
}

class QuartoSimples extends Quarto {
  QuartoSimples(int quantidadeDiarias)
    : super("Simples", 80, quantidadeDiarias);
}

class QuartoMedio extends Quarto {
  QuartoMedio(int quantidadeDiarias) : super("Médio", 250, quantidadeDiarias);

  void servirCafeDaManha() {
    print('Servindo café da manhã no quarto do tipo $tipoQuarto');
  }
}

class QuartoLuxo extends Quarto {
  QuartoLuxo(int quantidadeDiarias) : super("Luxo", 1000, quantidadeDiarias);
  void servirCafeDaManha() {
    print('Servindo café da manhã no quarto do tipo $tipoQuarto');
  }

  void solicitarServicoDeQuarto() {
    print('Limpando o quarto $tipoQuarto.');
  }
}

/*

5. Adicionando diferenças com polimorfismo
Agora que você criou as três classes de quartos, adicione as diferenças que existem entre elas:

Café da manhã: apenas os quartos médio e luxo possuem esta comodidade. Implemente essa característica com método que contém um print como “Servindo café da manhã no quarto do $tipo”;
Serviço de quarto: exclusivo do quarto luxo. Crie um método print do serviço de quarto, como "Limpando o quarto $tipo."
Vamos lá?


 */
