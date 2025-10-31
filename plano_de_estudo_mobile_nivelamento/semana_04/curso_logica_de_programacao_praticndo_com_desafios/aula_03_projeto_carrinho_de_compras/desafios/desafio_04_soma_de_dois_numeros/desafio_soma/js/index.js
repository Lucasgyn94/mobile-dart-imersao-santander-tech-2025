const somar = () => {
    let numero1 = parseInt(document.getElementById("numero1").value);
    let numero2 = parseInt(document.getElementById("numero2").value);
    let resultado = document.getElementById("resultado");
    let resultadoSoma = numero1 + numero1;
    console.log(`Soma: ${numero1} + ${numero2} = ${resultadoSoma}`);

    resultado.innerHTML = `<p>Resultado: ${numero1} + ${numero2} = ${resultadoSoma}`;
    

}

