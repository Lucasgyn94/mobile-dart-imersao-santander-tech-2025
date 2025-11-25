import 'package:app_funcionarios/funcionario.dart';

class Analista extends Funcionario {
  Analista(String nome) : super(nome, 3000);

  @override
  void calcularSalario() {
    // TODO: implement calcularSalario
    var total = salario + (salario * 1.2);
    print('Sálario do Analista $nome: R\$$total');
  }
}



/*
analista: salário base = salário base + salário base multiplicado por 1.2;
 */
