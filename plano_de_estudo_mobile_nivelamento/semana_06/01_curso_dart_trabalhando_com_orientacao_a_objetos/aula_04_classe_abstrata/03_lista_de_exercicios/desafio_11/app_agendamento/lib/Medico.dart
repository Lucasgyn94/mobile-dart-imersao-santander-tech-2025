import 'package:app_agendamento/Agendamento.dart';

class Medico implements Agendamento {
  @override
  void calculaDuracaoConsulta() {
    print('Duração padrão de consulta de 30 minutos!');
  }

  @override
  void verificaDisponibilidade() {
    // TODO: implement verificaDisponibilidade
    print('Verificar disponibilidade no calendário!');
  }
}
