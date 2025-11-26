import 'package:gerenciamento_acesso_app/controleAcesso.dart';

class ServicoProduto with ControleAcesso {
  void adicionarProduto() {
    executarOperacao('admin', () => print('Produto adicionado com sucesso'));
  }
}
