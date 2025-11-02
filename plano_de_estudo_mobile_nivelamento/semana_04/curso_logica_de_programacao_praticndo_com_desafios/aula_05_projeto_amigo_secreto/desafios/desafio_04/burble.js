const burble = (lista) => {
    let inicio, fim, auxiliar;
    let tamanhoLista = lista.length;

    for (fim = tamanhoLista - 1; fim > 0; --fim) {
        for (inicio = 0; inicio < fim; ++inicio) {
            if (lista[inicio] > lista[inicio + 1]) {
                auxiliar = lista[inicio];
                lista[inicio] = lista[inicio + 1];
                lista[inicio + 1] = auxiliar;
            }
        }
    }
}

let lista = [10,1,9,2,8,3,7,4,6,5];
console.log("Lista original");
console.log(lista);

burble(lista);

console.log("\nLista ordenada");
console.log(lista);

