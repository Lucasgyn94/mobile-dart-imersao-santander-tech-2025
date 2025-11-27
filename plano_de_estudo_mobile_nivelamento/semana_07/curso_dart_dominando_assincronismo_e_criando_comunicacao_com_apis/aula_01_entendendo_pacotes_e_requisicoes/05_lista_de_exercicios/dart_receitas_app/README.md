## Exercício 1 - Crie um Gist e adicione as receitas
Antes de começarmos a desenvolver o programa, você precisa criar um arquivo .json que conterá as receitas culinárias no Gist. Aproveite esse momento, para criar uma conta no GitHub, caso não tenha feito.

### Link do meu gist
```
https://gist.githubusercontent.com/Lucasgyn94/065a679bb2e77a2206de43cdfaea59d9/raw/c4a672836b9d93399888662eb631c857d43bf45f/recipes.json
```

Basta colar o código a seguir em um arquivo recipes.json:
```
[
  {
    "nome": "Salada de Ovo",
    "ingredientes": ["ovos", "maionese", "cebola", "salsinha", "sal", "pimenta"],
    "preparação": "Cozinhe os ovos, descasque-os e pique em pedaços pequenos. Misture com a maionese, cebola picada e salsinha. Tempere com sal e pimenta a gosto."
  },
  {
    "nome": "Bolo de Cenoura",
    "ingredientes": ["cenoura", "ovos", "açúcar", "farinha de trigo", "óleo", "fermento em pó"],
    "preparação": "Bata a cenoura com os ovos e o óleo no liquidificador. Misture com o açúcar, a farinha e o fermento. Asse em forno pré-aquecido por 40 minutos."
  },
  {
    "nome": "Pão de Queijo",
    "ingredientes": ["polvilho doce", "queijo minas ralado", "leite", "óleo", "ovos", "sal"],
    "preparação": "Misture todos os ingredientes até obter uma massa homogênea. Forme bolinhas e asse em forno pré-aquecido até dourar."
  },
  {
    "nome": "Feijão Tropeiro",
    "ingredientes": ["feijão cozido", "bacon", "linguiça", "farinha de mandioca", "cebola", "alho", "ovos", "cheiro-verde"],
    "preparação": "Frite o bacon e a linguiça, acrescente a cebola e o alho. Adicione o feijão, misture bem e coloque os ovos mexidos e a farinha. Finalize com cheiro-verde."
  },
  {
    "nome": "Lasanha de Berinjela",
    "ingredientes": ["berinjela", "molho de tomate", "queijo muçarela", "presunto", "parmesão ralado", "azeite", "sal"],
    "preparação": "Corte a berinjela em fatias e grelhe com azeite. Monte camadas de berinjela, molho de tomate, presunto e queijo. Asse até dourar."
  },
  {
    "nome": "Moqueca de Peixe",
    "ingredientes": ["filé de peixe", "leite de coco", "azeite de dendê", "pimentão", "tomate", "cebola", "coentro", "limão", "sal", "pimenta"],
    "preparação": "Tempere o peixe com limão, sal e pimenta. Cozinhe no leite de coco com pimentão, tomate, cebola e azeite de dendê. Finalize com coentro."
  },
  {
    "nome": "Risoto de Cogumelos",
    "ingredientes": ["arroz arbóreo", "cogumelos", "cebola", "alho", "vinho branco", "caldo de legumes", "parmesão", "manteiga", "sal", "pimenta"],
    "preparação": "Refogue a cebola e o alho na manteiga. Adicione os cogumelos e o arroz. Acrescente o vinho e, aos poucos, o caldo de legumes até o arroz ficar cremoso. Finalize com parmesão."
  },
  {
    "nome": "Coxinha de Frango",
    "ingredientes": ["frango desfiado", "caldo de galinha", "farinha de trigo", "manteiga", "leite", "cebola", "alho", "sal", "óleo para fritar"],
    "preparação": "Faça uma massa com o caldo de galinha, leite, manteiga e farinha. Recheie com frango desfiado temperado. Modele, empane e frite até dourar."
  },
  {
    "nome": "Pizza Margherita",
    "ingredientes": ["massa de pizza", "molho de tomate", "queijo muçarela", "tomate", "manjericão", "azeite", "sal"],
    "preparação": "Espalhe o molho sobre a massa, adicione o queijo e fatias de tomate. Asse até o queijo derreter e finalize com manjericão e azeite."
  },
  {
    "nome": "Brownie de Chocolate",
    "ingredientes": ["chocolate meio amargo", "manteiga", "açúcar", "ovos", "farinha de trigo", "nozes", "sal"],
    "preparação": "Derreta o chocolate com a manteiga. Misture o açúcar, os ovos, a farinha e as nozes. Asse em forno pré-aquecido até formar uma casquinha crocante por cima."
  }
]
```

## Exercício 2 - Instalando o pacote http
Para se comunicar com a API e obter a lista de receitas, você precisará instalar o pacote http no seu projeto Dart. Acesse o pub.dev e adicione a dependência necessária ao arquivo pubspec.yaml do seu projeto. Certifique-se de executar o comando para baixar as dependências.

## Exercício 3 - Realizando a primeira requisição HTTP
Agora que o pacote http está instalado, sua tarefa é criar uma função chamada fetchRecipes. Esta função deverá utilizar o método get para fazer uma requisição HTTP para o GIST que contém a lista de receitas. Utilize a URL do GIST e converta-a para uma URI utilizando o método apropriado. Lembre-se de importar o pacote http no seu código.

## Exercício 4 - Lidando com a resposta da requisição
Após realizar a requisição, você precisa lidar com a resposta. Utilize o objeto Response do pacote http para capturar a resposta da API. Como a operação é assíncrona, ajuste a função fetchRecipes para lidar com o objeto Future. Modifique seu código para que a função espere até que a resposta seja recebida antes de tentar acessar os dados.

## Exercício 5 - Exibindo os dados da resposta
Com a resposta da requisição capturada, agora é hora de mostrar os dados desejados. Modifique a função fetchRecipes para imprimir no console o corpo da resposta da API, que deve conter a lista de receitas.