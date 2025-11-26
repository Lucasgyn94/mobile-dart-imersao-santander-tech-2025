import 'package:gerenciamento_acesso_app/controleAcesso.dart';

class ServicoUsuario with ControleAcesso {
  void deletarUsuario() {
    if (verificarPermissaoAdmin('admin')) {
      print('Usuário deletado!');
    } else {
      print('Acesso negado!');
    }
  }
}

/*
5. Implementando controle de acesso com mixins
Implemente a classe ServicoUsuario que utilize o mixin ControleAcesso. Adicione um método deletarUsuario que somente permitirá a operação se o usuário tiver a permissão de administrador. Caso contrário, exiba a mensagem "Acesso negado". Escreva a classe no mesmo arquivo Dart em que você fez o mixin ControleAcesso.
 */
