import 'package:app_agendamento/Dentista.dart';
import 'package:app_agendamento/GerenciadorDeAgendamentos.dart';
import 'package:app_agendamento/Medico.dart';

void main() {
  Gerenciadordeagendamentos g1 = Gerenciadordeagendamentos();

  Medico m1 = Medico();
  Dentista d1 = Dentista();

  g1.adicionarProfissional(m1);
  g1.adicionarProfissional(d1);

  g1.exibirDuracaoEDisponibilidade();
}
/*
11. Testando o sistema de agendamento
Implemente um código de teste onde você cria instâncias das classes Medico e Dentista, adiciona essas instâncias ao GerenciadorDeAgendamentos, e chama os métodos para calcular e exibir a duração das consultas e verificar a disponibilidade para novos agendamentos. Verifique se o sistema está funcionando conforme o esperado.
 */