# uv com Python

## Instalando o uv

https://docs.astral.sh/uv/

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Atualizando o uv
```bash
uv self update
```

## Para iniciar o uv
Dentro da pasta do projeto
```bash
uv init
```

## Para instalar as dependências do requirements migrando da versão antiga para usar somenteo uv
```bash
uv pip sync docs/requirements.txt
```

## Se a venv não foi criada no comando `uv init` execute o comando abaixo para criar a venv
```bash
uv venv
```

## para instalar pip ou bibliotecas mais antigas
```bash
uv pip install pip==23.0.1
```
```bash
uv add setuptools==60.*
```

## Como adiconar o Django por exemplo
```bash
uv add Django==5.1
```

## Instalar bibliotecas de desenvolvimento
```bash
uv add --dev ruff
```
```bash
uv add --dev ipython
```
```bash
uv add --dev ipdb
```

## Exemplo de como executar o script na env isolada
```bash
uv run python hello.py
```
```bash
uv run python -V
```

## Fazer o uv autocomplementar o código
Para demais shells https://docs.astral.sh/uv/getting-started/installation/#shell-autocompletion
```bash
echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc
```
```bash
echo 'eval "$(uvx --generate-shell-completion bash)"' >> ~/.bashrc
```
Feche e abra novamente o seu shell

## Versões do Python
Instalando e gerenciando o próprio Python.

- `uv python install`: Instalar versões do Python.
-  `uv python list`: Veja as versões disponíveis do Python.
- `uv python find`: Encontre uma versão instalada do Python.
- `uv python pin`: Fixe o projeto atual para usar uma versão específica do Python.
- `uv python uninstall`: Desinstale uma versão do Python.
