
import 'dart:io';

void main() {
  print("### Calculadora de média de idades ###");
  print("Digite três (3) idades para cálculo: ");
  
  print("Ditite a primeira idade: ");
  double idadeUm = double.parse(stdin.readLineSync()!);

  print("Ditite a segunda idade: ");
  double idadeDois = double.parse(stdin.readLineSync()!);

  print("Ditite a terceira idade: ");
  double idadeTres = double.parse(stdin.readLineSync()!);

  double media = (idadeUm + idadeDois + idadeTres) / 3;
  print("Média: $media");

}

/*
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

 */
