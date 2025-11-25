import 'package:app_agendamento/Agendamento.dart';

class Dentista implements Agendamento{
  @override
  void calculaDuracaoConsulta() {
    print('Duração padrão de consulta de 45 minutos!');
  }

  @override
  void verificaDisponibilidade() {
    // TODO: implement verificaDisponibilidade
    print('Verificar disponibilidade no calendário considerando que os dentistas têm intervalos de 15 minutos entre consultas!');
  }

}