const separarSentenca = () => {
    let sentenca = document.getElementById("entradaSentenca").value;
    let resultado = document.getElementById("resultado");
    let sentencaSeparada = sentenca.split(";").join(" | "); 
    console.log(sentencaSeparada);

    resultado.innerHTML = `<p>${sentencaSeparada}</p>`;


}