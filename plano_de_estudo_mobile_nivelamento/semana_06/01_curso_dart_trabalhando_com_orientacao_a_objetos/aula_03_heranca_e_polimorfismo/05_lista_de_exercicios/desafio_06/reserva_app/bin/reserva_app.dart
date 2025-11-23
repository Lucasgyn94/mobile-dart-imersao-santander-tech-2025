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

  qs1.calcularValorTotal();
  qm1.calcularValorTotal();
  ql1.calcularValorTotal();
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

  void calcularValorTotal() {
    var total = valorDiaria * quantidadeDiarias;
    print(
      'O cliente ficará $quantidadeDiarias dia(s) e pagará R\$$total reais.',
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

6. Criando um método de cálculo de diárias
Agora, cada tipo de quarto deve calcular o valor total da reserva com base em tarifas específicas. Você precisa ajustar as classes para lidar com essas tarifas.

Adicione um método calcularValorTotal nas classes Quarto, QuartoMedio e QuartoLuxo. O método deve calcular o valor total da reserva com base em uma tarifa diária específica para cada tipo de quarto. Na main, crie exemplos de reservas para os três tipos de quarto e mostre o valor total calculado.

 */
