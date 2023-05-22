# Criar e Instalar em um ambiente virtual em python

## Para criar o ambiente virtual em uma pasta
python3 -m venv .venv

## Para ativar e começar a usar o ambiente virtual
source .venv/bin/activate

## Atualize o PIP que esta instalado dentro desse novo ambiente virtual
python3 -m pip install --upgrade pip

## Depois disso é só instalar normalmente os seus frameworks e bibliotecas, por exemplo:
pip install scrapy
