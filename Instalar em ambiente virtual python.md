# Criar e Instalar em um ambiente virtual em python

## Para criar o ambiente virtual em uma pasta
```bash
python3 -m venv .venv
```

## Para ativar e começar a usar o ambiente virtual
### No Linux
```bash
source .venv/bin/activate
```
### No windows
```bash
source .venv/Scripts/activate
```
## Atualize o PIP que está instalado dentro desse novo ambiente virtual
```bash
python -m pip install --upgrade pip
```

## Depois disso é só instalar normalmente os seus frameworks e bibliotecas, por exemplo:
```bash
pip install scrapy
```

## Para exportar as bibliotecas para um arquivo
```bash
pip freeze > requirements.txt
```

## Para instalar as bibliotecas a partir de um arquivo
```bash
pip install -r requirements.txt
```
