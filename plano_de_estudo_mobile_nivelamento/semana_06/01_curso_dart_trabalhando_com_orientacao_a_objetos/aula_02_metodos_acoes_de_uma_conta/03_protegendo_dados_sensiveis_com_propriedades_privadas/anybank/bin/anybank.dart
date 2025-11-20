import 'package:anybank/conta.dart';

void main() {
  Conta contaLucas = Conta("Lucas", 1000);
  Conta contaThor = Conta("Thor", 100);

  List<Conta> contas = <Conta>[contaLucas, contaThor];

  for (Conta c in contas) {
    print('${c.titular}');
  }

  print('\n===============================================\n');

}

