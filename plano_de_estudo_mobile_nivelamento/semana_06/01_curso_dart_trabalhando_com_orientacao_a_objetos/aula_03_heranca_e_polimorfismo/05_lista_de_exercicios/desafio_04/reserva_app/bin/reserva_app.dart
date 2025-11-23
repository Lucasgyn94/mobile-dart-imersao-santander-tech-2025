void main() {
  QuartoSimples qs1 = QuartoSimples(1);
  QuartoMedio qm1 = QuartoMedio(1);
  QuartoLuxo ql1 = QuartoLuxo(1);

  qs1.reservarQuarto();
  qm1.reservarQuarto();
  ql1.reservarQuarto();
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
}

class QuartoLuxo extends Quarto {
  QuartoLuxo(int quantidadeDiarias) : super("Luxo", 1000, quantidadeDiarias);
}

/*

4. Representando quartos com herança
Crie três classes que representam três tipos de quartos em um hotel: quarto simples, quarto médio e quarto luxo. Todos os quartos têm em comum as seguintes características:

Tipo de quarto: indica se o quarto é simples, médio ou luxo;
Valor da diária: registra a diária do tipo do quarto. Por exemplo, a diária do quarto simples é 80 reais; a do quarto médio é 250 reais; a do quarto luxo é 1000 reais. Repare que todos possuem a característica valorDiaria em comum, que é reaproveitada nos três tipos de quarto;
Número de diárias: o número de diárias reservadas por um(a) hóspede;
Método de reservar: realiza a ação de reservar um quarto.
Vamos lá?
 */
