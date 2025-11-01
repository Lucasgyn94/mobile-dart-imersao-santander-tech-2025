const converterCelsiusParaFahrenheit = (celsius) => {
    let fahrenheit = celsius * 1.8 + 32;
    console.log(`${celsius}º graus celsius equivale à ${fahrenheit}º fahrenheit`);
}

const converterFahrenheitParaCelsius = (fahrenheit) => {
    let celsius = (fahrenheit - 32) / 1.8;
    console.log(`${fahrenheit}º graus celsius equivale à ${celsius}º celsius`);
}

const conversorTemperatura = (temperatura, graus) => {
    switch(temperatura) {
        case "c": 
            converterCelsiusParaFahrenheit(graus);
            break;
        case "f":
            converterFahrenheitParaCelsius(graus);
            break;
        default: console.log('Operação inválida');

    }
}

conversorTemperatura("f", 30)