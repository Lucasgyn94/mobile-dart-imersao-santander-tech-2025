import 'dart:io';

void solicitarMetodoPagamento() {
  List<String> metodosPagamentos = <String>[
    "cartao",
    "boleto",
    "paypal",
    "pix",
  ];

  print("Escolha uma forma de pagamento: ${metodosPagamentos.toString()}");
  String? formaDePagamentoEscolhida = stdin
      .readLineSync()
      ?.trim()
      .toLowerCase();

  if (formaDePagamentoEscolhida == null ||
      formaDePagamentoEscolhida.isEmpty ||
      !metodosPagamentos.contains(formaDePagamentoEscolhida)) {
    print(
      "Forma de pagamento '$formaDePagamentoEscolhida' é inválida. Escolha entre $metodosPagamentos",
    );
    return solicitarMetodoPagamento();
  }

  print("✓ Pagamento por $formaDePagamentoEscolhida confirmado!");
  return;
}

void main() {
  solicitarMetodoPagamento();
}

/*
5) Validação de métodos de pagamento em uma plataforma de e-commerce
Você está desenvolvendo uma plataforma de e-commerce onde a pessoa usuária pode escolher entre diferentes métodos de pagamento como cartao, boleto, paypal e pix. Crie uma função que solicite à pessoa usuária o método de pagamento desejado e valide se a entrada é válida, solicitando novamente em caso de erro.

Ver opinião do instrutor

 */
