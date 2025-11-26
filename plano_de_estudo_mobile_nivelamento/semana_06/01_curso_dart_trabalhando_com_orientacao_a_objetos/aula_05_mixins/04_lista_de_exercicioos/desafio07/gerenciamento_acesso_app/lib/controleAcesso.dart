mixin ControleAcesso {
  bool verificarPermissaoAdmin(String papel) {
    return papel == 'admin';
  }

  void executarOperacao(String papel, Function operacao) {
    if (verificarPermissaoAdmin(papel)) {
      operacao();
    } else {
      print('Acesso negado!');
    }
  }
}
