import 'package:gerenciamento_acesso_app/controleAcesso.dart';

class ServicoUsuario with ControleAcesso {
  void deletarUsuario() {
    executarOperacao('admin', () => print('Usuário deletado com sucesso!'));
  }
}
