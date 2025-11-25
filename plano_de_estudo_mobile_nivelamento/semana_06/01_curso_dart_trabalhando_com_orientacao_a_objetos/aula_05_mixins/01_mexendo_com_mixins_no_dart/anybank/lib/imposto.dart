mixin Imposto {
  double taxa = 0.03;

  double valorTaxado(double valor) => taxa * valor;
}
