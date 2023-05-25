# Criar e Instalar em um ambiente virtual em python

## Para criar o ambiente virtual em uma pasta
```bash
python3 -m venv .venv
```

## Para ativar e começar a usar o ambiente virtual
```bash
source .venv/bin/activate
```

## Atualize o PIP que esta instalado dentro desse novo ambiente virtual
```bash
python -m pip install --upgrade pip
```

## Depois disso é só instalar normalmente os seus frameworks e bibliotecas, por exemplo:
```bash
pip install scrapy
```

```bash
pip freeze > requirements.txt
```

```bash
pip install -r requirements.txt
```
