import 'package:app_funcionarios/funcionario.dart';

class Gerente extends Funcionario {
  Gerente(String nome) : super(nome, 3000);

  @override
  void calcularSalario() {
    var total = salario + (salario * 1.5);
    print('Sálario da Gerente $nome: R\$$total');
  }
}
