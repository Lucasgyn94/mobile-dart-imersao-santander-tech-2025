const comprar = () => {
    let ingressoEscolhido = document.getElementById("tipo-ingresso").value;
    let qtd = document.getElementById("qtd").value;
    
    console.log(ingressoEscolhido);
    if (ingressoEscolhido === "pista") {
        alert(`Compra de ingresso ${ingressoEscolhido} efetuada com sucesso!`);
    }
    if (ingressoEscolhido === "inferior") {
        alert(`Compra de ingresso cadeira ${ingressoEscolhido} escolhido com sucesso!`);
    }

    if (ingressoEscolhido === "superior") {
        alert(`Compra de ingresso cadeira ${ingressoEscolhido} escolhido com sucesso!`);
    }
}