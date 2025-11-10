import 'dart:io';

void main() {
  int mes = -1;

  while (mes != 0) {
    print("Digite entre 1 e 12 para ver os meses correspondentes ao ano e 0 para sair: ");
    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada.startsWith(RegExp("[0-9]"))) {
        mes = int.parse(entrada);

        switch(mes) {
          case 0: 
            print("Saindo ...");
          case 1: 
            print("Janeiro");
            break;
          case 2: 
            print("Fevereiro");
            break;
          case 3: 
            print("Março");
            break;
          case 4: 
            print("Abril");
            break;
          case 5: 
            print("Maio");
            break;
          case 6: 
            print("Junho");
            break;
          case 7: 
            print("Julho");
            break;
          case 8: 
            print("Agosto");
            break;
          case 9: 
            print("Setembro");
            break;
          case 10: 
            print("Outubro");
            break;
          case 11: 
            print("Novembro");
            break;
          case 12: 
            print("Dezembro");
            break;
          default:
            print("Mes inválido!");
            break;
        }
      } else {
        print("Informe uma entrada válida entre 1 e 12");
      }
    }

    
  }
}

/*
## 2) Retornando os meses do ano
Desenvolva um programa em Dart que solicita ao usuário que digite um número de 1 a 12 e retorna o mês correspondente do ano. Por exemplo, ao digitar 2, o programa retorna a mensagem “Fevereiro”.


 */