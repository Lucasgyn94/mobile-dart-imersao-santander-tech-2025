const separadorDeNumeros = () => {
    let numeros = document.getElementById("numeros").value;
    let resultado = document.getElementById("resultado");
    let listaNumeros = [];
    listaNumeros.push(numeros);
    console.log(listaNumeros);
    console.log(listaNumeros.join(",").split(",").join(" | "));
    let listaSeparada = listaNumeros.join(",").split(",").join(" | ")
    resultado.innerHTML = `<p>${listaSeparada}</p>`
}

const impressao = () => {
    let numeros = "2,3,4,5,6"
    let numerosSeparados = numeros.split(",").join("|");
    console.log(numerosSeparados);
}