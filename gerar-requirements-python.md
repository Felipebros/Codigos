<!DOCTYPE html>
<html>

<body>
    <h2>Gerar requirements Python feito em JavaScript</h2>

    <p>Insira a lista no textarea abaixo e clique no botão para ver o resultado.</p>

    <textarea id="lista1" rows="20" cols="35"></textarea>

    <button onclick="chamarFuncao()">Gerar requirements Python</button>

    <textarea id="resultado" rows="20" cols="35"></textarea>
    <span id="contador3"></span>

    <script>
        function substituirEspacos(lista1) {
            var novoTexto = lista1.replace(/[^\S\n]+/g, '==');
            return novoTexto
        }

        const inputEntrada = document.getElementById("lista1");
        function chamarFuncao() {
            saida = substituirEspacos(inputEntrada.value)
            document.getElementById("resultado").value = saida;
        }
        inputEntrada.addEventListener("input", chamarFuncao);
    </script>

</body>

</html>