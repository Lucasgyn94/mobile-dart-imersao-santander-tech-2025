import 'dart:io';

double? validaValor(double? valor) {
  print('Digite o valor da operação:');
  valor = double.tryParse(stdin.readLineSync()!);

  if (valor == null || valor <= 0) {
    print('Valor inválido. Tente novamente.');
    return validaValor(valor);
  } else {
    return valor;
  }
}

String? validaOperacao(String? operacao, List<String> operacoes) {
  print('Digite uma operação (deposito, retirada, transferencia, pagamento):');
  operacao = stdin.readLineSync();

  if (operacoes.contains(operacao)) {
    return operacao;
  } else {
    print('Operação inválida. Tente novamente.');
    return validaOperacao(operacao, operacoes);
  }
}

void main() {
  List<String> operacoes = ['deposito', 'retirada', 'transferencia', 'pagamento'];
  String? operacao;

  operacao = validaOperacao(operacao, operacoes);

  double? valor;

  valor = validaValor(valor);

  print('Operação escolhida: $operacao, Valor: $valor');
}

/*

4) Criando a função de depósito e fazendo sua validação
Vamos continuar desenvolvendo o programa de banco.

Agora, concentre-se na operação de depósito e escreva uma função em que o usuário, após digitar um valor numérico, o insere na conta. Lembre-se de validar se a entrada é um número positivo. Caso contrário, solicite novamente até que um valor válido seja fornecido. A ideia é que o programa rode mais ou menos assim no terminal:

Digite uma operação (deposito, retirada, transferencia, pagamento):
operação inválida que não existe na lista!
Operação inválida. Tente novamente.
Digite uma operação (deposito, retirada, transferencia, pagamento):
aaaabbbbb
Operação inválida. Tente novamente.
Digite uma operação (deposito, retirada, transferencia, pagamento):    
pagamento
Digite o valor da operação:
500
Operação escolhida: pagamento, Valor: 500.0
 */
