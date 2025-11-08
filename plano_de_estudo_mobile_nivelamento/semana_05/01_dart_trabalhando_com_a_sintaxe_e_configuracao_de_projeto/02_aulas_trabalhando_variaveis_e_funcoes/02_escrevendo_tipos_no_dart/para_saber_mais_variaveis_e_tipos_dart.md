* No mundo da programação, variável é um conceito básico.

* E tem mais: cada variável tem um tipo. Cada variável armazena um tipo de dado diferente.

* Os tipos de dados são como os blocos de construção do seu código. No Dart, podemos dividi-los em dois grupos principais: tipos primitivos e tipos compostos. Cada um apresenta suas características e funções específicas, como peças diferentes de um quebra-cabeça.

1. Tipos primitivos:
* Os tipos primitivos são os elementos mais básicos para armazenar valores simples. Imagine-os como as peças únicas do seu quebra-cabeça. Ou seja, são tipos simples, compostos de uma única parte.

* No Dart, encontramos os seguintes tipos primitivos:

__Números__: int (números inteiros, como 1, 2, 3...), double (números decimais, como 1.5, 3.14...) e bool (valores binários e lógicos, true ou false).
__Texto__: String (sequências de caracteres, como "Olá, mundo!" ou "Essa é uma frase.").
__Caracteres__: rune (um único caractere, como 'a', 'B' ou '3').
Um detalhe importante é que, no Dart, String pode ser considerado um tipo primitivo, diferente de outras linguagens de programação. Esse caso é uma exceção, pois no Dart todos os tipos (primitivos e compostos) são uma referência a um objeto.

2. Tipos Compostos:
* Já os tipos compostos são como se fossem conjuntos de peças do quebra-cabeça que se unem para criar algo maior. Ou seja, são tipos compostos por mais de uma parte.

* Tipos compostos utilizam como base tipos primitivos e até outros tipos compostos. No Dart, os principais tipos compostos são:

__Listas__: List Armazenam valores ordenados do mesmo tipo, como uma lista de compras com itens repetidos ou não.
__Mapas__: Map Associam chaves únicas a valores, como uma agenda telefônica com nomes e números de telefone.
__Conjuntos__: Set Coleções de valores não ordenados e sem valores repetidos, como um conjunto de cartas de baralho sem repetições.

3. Um exemplo de declaração:
* Agora veja um exemplo de como escrever os tipos no Dart:

```
// Variáveis primitivas
int numeroInteiro = 10;
double numeroDecimal = 3.14;
String texto = "Este é um texto.";
bool isAtivo = true;
```

```
// Variáveis compostas
List<String> nomes = ["Ana", "João", "Maria"];
Map<String, String> agenda = {"Ana": "1234-5678", "João": "9876-5432"};
Set<int> numerosUnicos = {1, 2, 3, 4, 3}; // O número 3 só aparece uma vez
```

```
// Acessando valores
print("Número inteiro: $numeroInteiro");
print("Número decimal: $numeroDecimal");
print("Texto: $texto");
print("Ativo: $isAtivo");

print("Primeiro nome da lista: ${nomes[0]}");
print("Telefone da Ana: ${agenda['Ana']}");
print("Números únicos no conjunto: $numerosUnicos");
```

Nesse exemplo, você vê como os tipos primitivos e compostos são usados para armazenar diferentes tipos de dados. As variáveis primitivas armazenam valores únicos; os tipos compostos organizam coleções de dados mais complexas.
