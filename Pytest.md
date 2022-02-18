Executa o pytest gerando o `.coverage` dos testes que contenham esse pedaço de nome de arquivo ou pedaço do código, e o -x para no primeiro erro.
```bash
coverage run -m pytest -k pedaço_do_nome_do_arquivo -x
```

Gerar o HTML a partir dor arquivo `.coverage`.
```bash
coverage html
```
