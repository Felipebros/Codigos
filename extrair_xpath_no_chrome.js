let elementos = $x("//li[id=contains(.,'commit')]/div[2]/div[1]/div/a/text()");
let nomes = '';
elementos.forEach(function (nome) {
    nomes += nome.textContent + "\n"
});
nomes
