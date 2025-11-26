# Questões
## 1. Criando um mixin para cálculo de taxa de bagagem
* Crie um mixin chamado TaxaBagagem que tenha uma variável taxa com o valor de 10% e um método calcularTaxa(double valor) que retorne o valor da taxa sobre o total da passagem. Este mixin será utilizado para calcular a taxa adicional nas passagens que incluem bagagem.

## 2. Criando uma passagem
* Considere o seguinte código da classe abstrata Passagem:
```
abstract class Passagem {
  String cliente;
  double valorBase;

  Passagem(this.cliente, this.valorBase);

  double calcularPrecoFinal() {
    return valorBase;
  }
}
```
* Implemente a classe __PassagemComBagagem__ que herda de __Passagem__ e utiliza o mixin __TaxaBagagem__. Sobrescreva a função de __calcularPrecoFinal__, de modo que o cálculo do preço final da passagem inclua a taxa de bagagem utilizando a função __calcularTaxa__ do mixin.

## 3. Criando um mixin para cálculo de taxa de bagagem
* Implemente a classe **PassagemSemBagagem** que herda de **Passagem**, mas não utiliza o mixin **TaxaBagagem**. A função **calcularPrecoFinal** para esta classe deve retornar apenas o valor da passagem sem qualquer taxa adicional.

## 4. Implementando controle de acesso com mixins
* Você está desenvolvendo um sistema básico de gerenciamento para uma loja online. O sistema precisa gerenciar diferentes operações, como deletar usuários e adicionar produtos, mas somente administradores têm permissão para realizar essas operações críticas. Afinal, imagine se um usuário comum pudesse deletar e adicionar produtos em um site? Seria, sem dúvida, um caos. O usuário comum pode apenas comprar produtos, mas não modificá-los.

* Para evitar a repetição de código ao verificar as permissões, você deve utilizar mixins no Dart para compartilhar essa funcionalidade de controle de acesso entre diferentes partes do sistema.

* Comece assim: crie um mixin chamado **ControleAcesso** que tenha uma função **verificarPermissaoAdmin(String papel)** que retorne **true** se o papel for igual a 'admin' e **false** caso contrário. Este **mixin** será utilizado para verificar se um usuário tem permissão para realizar operações críticas no sistema.

## 5. Implementando controle de acesso com mixins
* Implemente a classe ServicoUsuario que utilize o mixin **ControleAcesso**. Adicione um método **deletarUsuario** que somente permitirá a operação se o usuário tiver a permissão de administrador. Caso contrário, exiba a mensagem "Acesso negado". Escreva a classe no mesmo arquivo Dart em que você fez o mixin **ControleAcesso**.

## 6. Produzindo uma classe de adição de produtos
* Escreva o código de uma classe chamada **ServicoProduto**, que utilize o mixin **ControleAcesso**. Adicione um método adicionarProduto, que somente permitirá a operação se o usuário tiver a permissão de administrador. Caso contrário, exiba a mensagem "Acesso negado". Implemente esta nova classe no mesmo arquivo que a classe ServicoUsuario e o mixin ControleAcesso.

## 7. Melhorando a qualidade do código
* Analise o código das classes Serviço Usuário e ServicoProduto. Identifique qualquer código repetitivo nas funções que verificam a permissão e refatore esse código, utilizando métodos auxiliares ou ajustando a lógica para evitar duplicação, garantindo que ambas as classes mantenham a funcionalidade adequada.
