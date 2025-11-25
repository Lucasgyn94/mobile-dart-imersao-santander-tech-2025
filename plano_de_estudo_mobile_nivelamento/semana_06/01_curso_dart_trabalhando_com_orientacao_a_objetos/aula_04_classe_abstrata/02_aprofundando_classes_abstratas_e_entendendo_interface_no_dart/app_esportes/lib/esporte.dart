abstract class Pontuacao {
  void calcularPontos();
  void devolverColocacao();
}

class Volei extends Esporte implements Pontuacao {
  Volei(super.time);
  
  @override
  void calcularPontos() {
    // TODO: implement calcularPontos
  }

  @override
  void devolverColocacao() {
    // TODO: implement devolverColocacao
  }
}

class Esporte {
  String time;
  Esporte(this.time);
}
