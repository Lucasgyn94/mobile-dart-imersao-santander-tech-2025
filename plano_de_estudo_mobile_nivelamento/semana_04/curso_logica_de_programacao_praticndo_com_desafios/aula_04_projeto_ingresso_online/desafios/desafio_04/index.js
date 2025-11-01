const verificadorParOuImpar = (numero) => {
    if (numero > 0) {
        if (numero % 2 === 0) {
        console.log(`Número ${numero} é par`);
        } else {
            console.log(`Número é ímpar!`)
        }
    } else {
        console.log("Número deve ser maior que 0");
    }
}

verificadorParOuImpar(15);