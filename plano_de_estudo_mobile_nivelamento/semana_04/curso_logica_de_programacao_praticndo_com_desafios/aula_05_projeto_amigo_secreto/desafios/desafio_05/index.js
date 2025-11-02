/*
Crie uma função chamada removerDuplicatas que aceita um array como parâmetro e retorna um novo array sem elementos duplicados. Teste a função com novaLista e imprima o array resultante.

*/

const removerDuplicadas = (lista) => {
    return [... new Set(lista)];
}

let listaComDuplicadas = [1,1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6];
let listaSemDuplicadas = removerDuplicadas(listaComDuplicadas);
console.log(listaSemDuplicadas);