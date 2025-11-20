import 'package:anybank/conta.dart';

void main() {
  Conta contaLucas = Conta("Lucas", 1100);
  Conta contaThor = Conta("Thor", 100);

  //List<Conta> contas = <Conta>[contaLucas, contaThor];
  contaLucas.enviarValor(100);
  contaThor.receberValor(1500);

  print('\n===============================================\n');
}
