import 'package:app_funcionarios/analista.dart';
import 'package:app_funcionarios/diretor.dart';
import 'package:app_funcionarios/gerente.dart';

void main(List<String> arguments) {
  Analista a1 = Analista('João');
  a1.calcularSalario();
  print('');

  Gerente g1 = Gerente('Maria');
  g1.calcularSalario();
  print('');

  Diretor d1 = Diretor('Giovana');
  d1.calcularSalario();
}
