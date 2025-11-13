void imprimirLetras(String frase) {
  for (int i = 0; i < frase.length; i++) {
    print(frase[i]);

    if (frase[i] == "!") {
      print("Parou aqui ${frase[i]}");
      return;
    }
  }
}

void main() {
  String frase = "Parou! Este código não continua.";
  imprimirLetras(frase);
}
/*
3) Em busca da parada
Escreva um programa que imprime letras de uma frase “Parou! Este código não continua.” A ideia é que o código pare na primeira letra “!” encontrada.


 */