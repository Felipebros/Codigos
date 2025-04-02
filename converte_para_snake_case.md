[https://felipebros.github.io/Codigos/converte_para_snake_case.html](https://felipebros.github.io/Codigos/converte_para_snake_case.html)

<div>
    <h2>Converte para snake_case - feito em JavaScript</h2>

    <p>Insira no textarea abaixo e clique no botão para ver o resultado.</p>

    <textarea id="lista1" rows="20" cols="35"></textarea>

    <button onclick="chamarFuncao()">Substituir Espaços por ==</button>

    <textarea id="resultado" rows="20" cols="35"></textarea>
    <span id="contador3"></span>

    <script>
        function toSnakeCase(str) {
            // Remove acentos utilizando normalize e expressão regular
            let normalizedStr = str.normalize('NFD').replace(/[\u0300-\u036f]/g, '');

            // Substitui todos os caracteres não alfanuméricos por um espaço
            let snakeStr = normalizedStr.replace(/[^a-zA-Z0-9]+/g, ' ');

            // Converte a string para minúsculas e substitui os espaços por underscores
            snakeStr = snakeStr.toLowerCase().replace(/\s+/g, '_');

            return snakeStr;
        }

        const inputEntrada = document.getElementById("lista1");
        function chamarFuncao() {
            saida = toSnakeCase(inputEntrada.value)
            document.getElementById("resultado").value = saida;
        }
        inputEntrada.addEventListener("input", chamarFuncao);
    </script>

</div>