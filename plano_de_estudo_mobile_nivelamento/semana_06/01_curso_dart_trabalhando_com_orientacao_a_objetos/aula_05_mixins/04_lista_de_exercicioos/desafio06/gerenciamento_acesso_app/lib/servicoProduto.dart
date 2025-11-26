import 'package:gerenciamento_acesso_app/controleAcesso.dart';

class ServicoProduto with ControleAcesso {
  void adicionarProduto() {
    if (verificarPermissaoAdmin('admin')) {
      print('Produto adicionado com sucesso!');
    } else {
      print('Você não tem permissões para criar um produto!');
    }
  }
}


/*
6. Produzindo uma classe de adição de produtos
Escreva o código de uma classe chamada ServicoProduto, que utilize o mixin ControleAcesso. Adicione um método adicionarProduto, que somente permitirá a operação se o usuário tiver a permissão de administrador. Caso contrário, exiba a mensagem "Acesso negado". Implemente esta nova classe no mesmo arquivo que a classe ServicoUsuario e o mixin ControleAcesso.


 */