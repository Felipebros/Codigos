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

