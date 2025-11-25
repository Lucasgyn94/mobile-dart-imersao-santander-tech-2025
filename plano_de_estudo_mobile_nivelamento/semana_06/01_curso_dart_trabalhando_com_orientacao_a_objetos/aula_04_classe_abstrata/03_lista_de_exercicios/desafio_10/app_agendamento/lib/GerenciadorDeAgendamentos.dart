import 'package:app_agendamento/Agendamento.dart';

class Gerenciadordeagendamentos {
  List<Agendamento> profissionais = [];

  void adicionarProfissional(Agendamento profissional) {
    profissionais.add(profissional);
  }

  void exibirDuracaoEDisponibilidade() {
    for (Agendamento profissional in profissionais) {
      profissional.calculaDuracaoConsulta();
      profissional.verificaDisponibilidade();
    }
  }
}

/*
10. Criando um gerenciador de agendamentos de consulta
Crie uma classe chamada GerenciadorDeAgendamentos que contenha uma lista de objetos que implementam a interface Agendamento. Adicione métodos para adicionar novos profissionais à lista e para calcular e exibir a duração das consultas e a disponibilidade de todos os profissionais cadastrados no sistema.

A ideia aqui não é exibir nada no terminal, apenas praticar a lógica do código. Portanto, não se preocupe em instanciar ou criar objetos. Foque apenas na lógica da classe GerenciadorDeAgendamentos e seus métodos.
 */
