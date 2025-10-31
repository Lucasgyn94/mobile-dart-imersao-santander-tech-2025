const capturarDados = () => {
    let nome = document.getElementById("nome").value;
    let idade = parseInt(document.getElementById("idade").value);
    let dados = document.getElementById("dados");

    if (!nome || nome === "") {
        alert('Nome inválido!');
        return ;
    }

    if (idade <= 0) {
        alert("Informe uma idade válida entre 0 e 120 anos.");
        return ;
    }
    let dadosView = `<p>Nome: ${nome} - Idade: ${idade}</p>`;
    dados.innerHTML = dadosView;


}