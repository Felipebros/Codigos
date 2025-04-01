<!DOCTYPE html>
<html>

<body>

    <h2>Gerar requirements Python feito em JavaScript</h2>

    <p>Insira a lista no textarea abaixo e clique no botão para ver o resultado.</p>

    <textarea id="lista1" rows="20" cols="30"></textarea>

    <button onclick="compararListas()">Gerar requirements Python</button>

    <textarea id="resultado" rows="20" cols="30"></textarea>
    <span id="contador3"></span>

    <script>
        var inputLista1 = document.getElementById("lista1");
        var inputLista2 = document.getElementById("lista2");
        function compararListas() {
            var lista1 = inputLista1.value.split("\n").filter(Boolean);
            const novoTexto = lista1.replace(/\s+/g, '==');
            document.getElementById("resultado").value = novoTexto;
        }
        inputLista1.addEventListener("input", compararListas);
    </script>

</body>

</html>