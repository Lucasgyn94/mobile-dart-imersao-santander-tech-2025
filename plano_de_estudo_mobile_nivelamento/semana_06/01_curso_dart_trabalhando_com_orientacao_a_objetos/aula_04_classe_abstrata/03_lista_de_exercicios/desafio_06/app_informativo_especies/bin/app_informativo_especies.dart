
import 'package:app_informativo_especies/Animal.dart';
import 'package:app_informativo_especies/Planta.dart';

void main() {
  Planta girassol = Planta('Girassol', 'flor');
  girassol.mostrarCaracteristicas();
  Planta laranjeira = Planta('Laranjeira', 'árvore');
  laranjeira.mostrarCaracteristicas();

  Animal humano = Animal('Ser humano', 'bípede', 75);
  humano.mostrarCaracteristicas();
  Animal gato = Animal('Gato', 'quadrúpede', 20);
  gato.mostrarCaracteristicas();
  Animal cao = Animal('Cão', 'quadrúpede', 20);
  cao.mostrarCaracteristicas();

}

/*
6. Criando um programa informativo de espécies de seres vivos
Este exercício será um pouco mais desafiador.

Crie um programa que mostra características sobre os seres vivos e implemente três classes, seguindo os requisitos de cada uma:
Classe SerVivo: será uma classe abstrata que terá um método void mostrarCaracteristicas();.
Planta: será uma classe que implementa SerVivo e terá os seguintes objetos e suas descrições de print:
Girassol: é uma planta, não tem os cinco sentidos, é uma flor;
Laranjeira: é uma planta, não tem os cinco sentidos, é uma árvore;
Animal: é vivo e tem os cinco sentidos:
Ser humano: tem cinco sentidos, pensa e fala, é bípede e vive em média 75 anos;
Gato: tem cinco sentidos, mia, é quadrúpede e vive em média 20 anos;
Cão: tem cinco sentidos, late, é quadrúpede e vive em média 20 anos.
Represente essas coisas do mundo real com classe, classe abstrata, herança e polimorfismo de orientação a objetos.

O resultado do print no terminal deverá se parecer com isto:

Girassol: é uma planta, não tem os cinco sentidos, é uma flor.

Laranjeira: é uma planta, não tem os cinco sentidos, é uma árvore.

Ser humano: tem cinco sentidos, pensa e fala, é bípede e vive em média 75 anos.

Gato: tem cinco sentidos, pensa e fala, é quadrúpede e vive em média 20 anos.

Cão: tem cinco sentidos, pensa e fala, é quadrúpede e vive em média 20 anos.
 */