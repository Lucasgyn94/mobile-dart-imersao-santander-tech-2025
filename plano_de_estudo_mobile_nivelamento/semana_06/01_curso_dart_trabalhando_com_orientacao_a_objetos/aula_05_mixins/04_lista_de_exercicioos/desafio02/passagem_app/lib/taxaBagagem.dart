mixin TaxaBagagem {
  double taxa = 0.1;

  double calcularTaxa(double valor) => valor * taxa;
}
