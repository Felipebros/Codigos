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
Para iniciar com uma versõa definida do python
```bash
uv init -p 3.8
```

## Para instalar as dependências do requirements migrando da versão antiga para usar somenteo uv
```bash
uv add -r requirements.txt
```

### Em caso de erro, adicione essa parte abaixo no seu `pyproject.toml`
```bash
[project.optional-dependencies]
build = ["setuptools==56.0.0", "wheel>=0.44.0", "clang"]

[tool.uv]
no-build-isolation-package = ["django-allauth"]
```
Depois execute
```bash
uv sync --extra build
```
E depois execute
```bash
uv add -r requirements.txt
```

## Ou dessa maneira abaixo, que não atualiza o `pyproject.toml`
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
ou simplesmente
```bash
uv run hello.py
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
- `uv python list`: Veja as versões disponíveis do Python.
- `uv python find`: Encontre uma versão instalada do Python.
- `uv python pin`: Fixe o projeto atual para usar uma versão específica do Python.
- `uv python uninstall`: Desinstale uma versão do Python.

## Para instalar uma ferramenta a ser usada em todo o computador
```bash
uv tool install ruff
```

## Para executar uma ferramenta em qualquer pasta
```bash
uvx ruff
```

## Para exportar para o requirements.txt
```bash
uv pip freeze > requirements.txt
```

## Para atualizar a versão do python para uma env já existente
1. Altere a versão nos arquivos `pyproject.toml` e `.python-version`
2. Isso deleta e cria uma nova `.venv/` com a nova versão:
```bash
uv sync
```
(Geralmente não executar) Se necessário reinstale as dependências do projeto
```bash
uv pip install -e .
```


