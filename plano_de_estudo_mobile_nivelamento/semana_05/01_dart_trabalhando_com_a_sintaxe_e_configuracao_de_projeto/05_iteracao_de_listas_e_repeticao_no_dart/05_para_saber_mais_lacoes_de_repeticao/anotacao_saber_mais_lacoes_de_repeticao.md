Vimos que laços de repetição são ferramentas para automatizar tarefas repetitivas, o que economiza seu tempo e esforço.

No Dart, diversas opções de laços permitem controlar a execução de um bloco de código por um número determinado de vezes ou até que uma condição seja satisfeita.

Vamos ver as nossas opções?

1. O laço for: o jeito clássico
O laço for é o mais utilizado para executar um bloco de código um número específico de vezes. Ele possui a seguinte estrutura:

for (int i = 0; i < limite; i++) {
  // Código a ser executado repetidamente
}
Copiar código
No exemplo acima, a variável i assume valores de 0 a limite-1 a cada iteração do laço. O código dentro do bloco {} será executado para cada valor de i. Ou seja, o for(){} é composto por 3 partes principais:

O for é o comando usado para iniciar o loop;
O () é onde vamos definir nossas condições, e divide-se em 3 sub-partes: inicialização, condição, pós-loop.
Onde a inicialização é responsável pela criação da variável condicional inicial (int i = 0);
A condição é responsável por comparar a variável inicial com a nossa lógica desejada;
O pós-loop é a ação que será tomada no final da repetição, normalmente é usada para incrementar a variável inicial (i++).
2. O laço while: executando enquanto uma condição for verdadeira
O laço while executa e repete um bloco de código enquanto uma condição específica for verdadeira. Sua estrutura é:

while (condicao) {
  // Código a ser executado enquanto a condição for verdadeira
}
Copiar código
Neste caso, o código dentro do bloco {} será executado repetidamente enquanto a condição condicao permanecer verdadeira. Se a condição for falsa na primeira avaliação, o laço será pulado.

Ou seja, quando precisamos criar repetições, mas não temos certezas das quantidades de repetições necessárias, usamos o while(){}, que consiste em três partes:

while que é o comando para começar a lógica de repetição;
()que é onde vamos colocar a condição booleana;
{} local designado para as ações que serão repetidas.
3. O laço do-while: Executando primeiro e verificando depois
O laço do-while é semelhante ao while, mas com a diferença de que o código dentro do bloco {} é executado pelo menos uma vez, independentemente do valor inicial da condição. Sua estrutura é:

do {
  // Código a ser executado pelo menos uma vez
} while (condicao);
Copiar código
Na primeira iteração, o código dentro do bloco é executado. Em seguida, a condição condicao é avaliada. Se for verdadeira, o laço se repete. Se for falsa, o laço termina. Sua estrutura é:

do que é o comando para começar a lógica de repetição;
{} que é o local designado para as ações que serão repetidas;
while que é o comando para começar a lógica de condição;
()que é onde vamos colocar a condição booleana.
4. O laço for...in: Percorrendo coleções de dados
O laço for...in simplifica a iteração sobre elementos de coleções de dados, como listas e mapas. Sua estrutura é:

for (tipoElemento elemento in colecaoDeDados) {
  // Código a ser executado para cada elemento da coleção
}
Copiar código
A variável elemento assume a forma de cada elemento da coleção a cada iteração. O código dentro do bloco {} será executado para cada elemento.

Exemplos detalhados:
// Laço for para imprimir números de 1 a 5
for (int i = 1; i <= 5; i++) {
  print(i);
}

// Laço while para calcular a média de notas até que o usuário digite -1
int nota = 0;
int somaNotas = 0;
int quantidadeNotas = 0;

while (nota != -1) {
  print('Digite uma nota (ou -1 para finalizar):');
  nota = int.parse(stdin.readLineSync()!);

  if (nota != -1) {
    somaNotas += nota;
    quantidadeNotas++;
  }
}

if (quantidadeNotas > 0) {
  double media = somaNotas / quantidadeNotas;
  print('A média das notas digitadas é: $media');
} else {
  print('Nenhuma nota foi digitada.');
}

// Laço do-while para imprimir caracteres de uma string até encontrar a letra 'e'
String texto = 'Este é um texto de exemplo.';
int index = 0;

do {
  print(texto[index]);
  index++;
} while (texto[index] != 'e' && index < texto.length);

// Laço for...in para imprimir os nomes de uma lista
List<String> nomes = ['Ana', 'João', 'Maria'];

for (String nome in nomes) {
  print('Nome: $nome');
}
