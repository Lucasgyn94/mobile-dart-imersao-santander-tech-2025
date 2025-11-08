# Exercícios
* Exploramos, em vídeo, os objetos básicos do Dart (variáveis e funções).

* Agora é a sua vez de praticar!

## 1) Calculando o dobro de um número
* Faça um programa simples que calcula o dobro de um número inserido no terminal.

* Veja um exemplo do resultado no terminal:
```
Digite um número:
10
O dobro de 10 é 20.
```
Vamos lá?

## 2) Descobrindo a média de idades
* Escreva um programa que calcula a idade média de três pessoas. O usuário deve ser capaz de inserir as três idades e, ao final, o programa exibe a média dos números.

* Veja um exemplo do resultado final que deve ser mostrado no terminal:
```
Digite a idade da primeira pessoa:
20
Digite a idade da segunda pessoa:
30
Digite a idade da terceira pessoa:
40
A média das idades é 30.0.
```
Vamos lá?

## 3) Escrevendo a ficha de participante
* Desenvolva um programa que exibe uma pequena “ficha” com informações suas, utilizando os conhecimentos do Dart! As informações da ficha são:
  - Nome;
  - CPF;
  - Idade;
  - Altura;
  - Participo da comunidade?
* Declare esses dados dentro da variável e depois imprima-os no terminal.

Vamos lá?

## 4) Calculando o salário do freela
* Você foi contratado para um trabalho freelance. Crie um programa que lê as horas trabalhadas e calcula o salário líquido, considerando:

* A empresa paga 50 reais por hora trabalhada;
* O desconto do salário é de 5% e deve ser subtraído do salário bruto.
* Veja um exemplo de como o programa deve ficar no terminal:
```
Digite o número de horas trabalhadas:
100
O salário líquido é R$ 4750.0.
```

Vamos lá?

## 5) Consertando erros em um programa
* Você está trabalhando em um programa de banco, que faz três ações:

  - Mostrar o saldo bancário do usuário;
  - Permitir que o usuário faça uma transferência pix (de forma simplificada);
  - Subtrair o valor do pix do valor de saldo.

* No entanto, o código possui erros. Analise-o com atenção:
```
import 'dart:io';

string saldo = 1000.0; // Saldo inicial em reais

void main() {
  print('Boas-vindas ao seu banco digital!')
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}')

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync());

  saldo -= valorPix;

  print('Pix realizado com sucesso!')
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
}
```
* Logo, sua tarefa faça as correções no código acima. Veja as dicas:

* Abra um novo projeto Dart em seu computador;
* Copie e cole o código acima;
* Faça os ajustes necessários no código;
* Rode o programa no terminal e verifique se ele apresenta os comportamentos esperados.
* Bons estudos!

## 6) Identificando e corrigindo tipos no Dart
* Chegou nas suas mãos um programa de retirada de pontos de um clube de benefícios.

* A lógica deve ser a seguinte:
  - Os pontos iniciais começam no valor 100;
  - O programa inicia com uma mensagem: “*Você tem [x] pontos.*”;
  - Em seguida, exibe a mensagem: “*Quantos pontos você gostaria de resgatar?*”;
  - O usuário digita quantos [y] pontos deseja retirar;
  - O programa faz uma subtração (pontos iniciais [100] - pontos retirados [y]);
  - Por fim, mostra uma mensagem que informa: “Você resgatou [y] pontos. Pontos restantes: [z].””
* Você já tem esse código pronto:

```
import 'dart:io';

void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontos pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  
  string pontosRestantes = pontosIniciais - pontosRetirados;

  print("Você resgatou $quantidade pontos. Pontos restantes: $pontos.");
}
```
* Após atentamente ler o código, faça os ajustes para que o programa funcione adequadamente no terminal do seu VSCode.

* Vamos lá?

## 7) Refatorando o código do clube de benefícios com função
* Se você resolveu o exercício anterior, agora refatore (modifique) o código, colocando a funcionalidade de subtração de pontos dentro de uma função.

Vamos lá?

## 8) Implementando um programa de cupons
* Escreva um programa que informa quantos cupons um cliente ganhou ao fazer compras no mercado No Precinho. A regra da promoção é: a cada 50 reais gastos por compra, a pessoa recebe um cupom. O programa deve:
  - Capturar a entrada com o valor gasto;
  - Exibir mensagem de quantos cupons foram ganhos.
* Vamos lá?
