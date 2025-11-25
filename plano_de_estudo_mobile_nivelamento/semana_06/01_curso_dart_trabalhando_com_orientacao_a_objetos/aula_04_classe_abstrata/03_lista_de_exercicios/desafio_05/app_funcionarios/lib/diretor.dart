import 'package:app_funcionarios/funcionario.dart';

class Diretor extends Funcionario {
  Diretor(String nome) : super(nome, 3000);

  @override
  void calcularSalario() {
    // TODO: implement calcularSalario
    var total = salario + (salario * 2.0);
    print('Sálario da Diretora $nome: R\$$total');
  }
}
