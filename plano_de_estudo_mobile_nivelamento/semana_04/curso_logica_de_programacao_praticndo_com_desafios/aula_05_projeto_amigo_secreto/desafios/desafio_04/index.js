/*
Utilize o algoritmo de Fisher-Yates (também conhecido como Knuth Shuffle) para embaralhar os elementos em novaLista. Pesquise e adapte o código para realizar o embaralhamento.
*/

const embaralhar = (lista) => {
    let indiceAtual = lista.length;

    while (indiceAtual != 0) {
        let indiceAleatorio = Math.floor(Math.random() * indiceAtual);
        indiceAtual--;

        [lista[indiceAtual], lista[indiceAleatorio]] = [lista[indiceAleatorio], lista[indiceAtual]];
    }
}

let minhaLista = [1, 2, 3];
let minhaLista2 = [4, 5, 6];
let listaNova = minhaLista.concat(minhaLista2);


console.log(`Lista original:`);
console.log(listaNova);

console.log(`\nLista embaralhada:`);
embaralhar(listaNova)
console.log(listaNova)