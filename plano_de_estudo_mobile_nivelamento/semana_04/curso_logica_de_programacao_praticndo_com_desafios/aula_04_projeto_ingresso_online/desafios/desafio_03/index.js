const somar = (n1,n2) => {
    resultado = n1 + n2;
    console.log(`${n1} + ${n2} = ${resultado}`);
}

const subtrair = (n1,n2) => {
    resultado = n1 - n2;
    console.log(`${n1} - ${n2} = ${resultado}`);
}
const multiplicar = (n1,n2) => {
    resultado = n1 * n2;
    console.log(`${n1} * ${n2} = ${resultado}`);
}
const dividir = (n1,n2) => {
    if (n1 <= 0) {
        console.log("Numerador não pode ser menor ou igual a zero 0;")
    } else {
        resultado = n1 / n2;
        console.log(`${n1} / ${n2} = ${resultado}`);
    }
}

const calculadora = () => {
    let operacao = "m";

    if ((operacao.toLowerCase() === "somar") || operacao.startsWith("so")) {
        somar(5,10);
    } else if ((operacao.toLowerCase() === "subtrair") || operacao.startsWith("su")) {
        subtrair(10,5);
    }else if ((operacao.toLowerCase() === "multiplicar") || operacao.startsWith("m")) {
        multiplicar(10,5);
    }else if ((operacao.toLowerCase() === "divividr") || operacao.startsWith("d")) {
        dividir(10,5);
    } else {
        console.log('Operação inválida!');
    }
}

calculadora();