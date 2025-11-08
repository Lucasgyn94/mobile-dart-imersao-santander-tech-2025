/*
## 1) Calculando o dobro de um número
* Faça um programa simples que calcula o dobro de um número inserido no terminal.

* Veja um exemplo do resultado no terminal:
```
Digite um número:
10
O dobro de 10 é 20.
```
Vamos lá?

*/
import 'dart:io';

void main(){
  print("Digite um número para ver o dobro de seu valor: ");
  double numero = double.parse(stdin.readLineSync()!);
  double dobro = numero * 2;
  print("O dobro do número $numero é $dobro");
}