mixin ControleAcesso {
  bool verificarPermissaoAdmin(String papel) {
    if (papel == 'admin') {
      return true;
    } else {
      return false;
    }
  }
}

/*
Comece assim: crie um mixin chamado ControleAcesso que tenha uma função verificarPermissaoAdmin(String papel) que retorne true se o papel for igual a 'admin' e false caso contrário. Este mixin será utilizado para verificar se um usuário tem permissão para realizar operações críticas no sistema.
 */
