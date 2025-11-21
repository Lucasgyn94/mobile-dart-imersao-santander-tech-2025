class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  void trabalhar() {
    print('Olá, me chamo $nome e sou um funcionário!');
  }
}

class Cozinheiro extends Funcionario {
  Cozinheiro(super.nome, super.salario);

  @override
  void trabalhar() {
    // TODO: implement trabalhar
    print("Olá, me chamo $nome e sou um Cozinheiro!");
  }
}

class Garcom extends Funcionario {
  Garcom(super.nome, super.salario);

  @override
  void trabalhar() {
    // TODO: implement trabalhar
    print('Olá, me chamo $nome e sou um Garçom!');
  }
}

class Gerente extends Funcionario {
  Gerente(super.nome, super.salario);

  @override
  void trabalhar() {
    // TODO: implement trabalhar
    print('Olá, me chamo $nome e sou um Gerente!');
  }
}
