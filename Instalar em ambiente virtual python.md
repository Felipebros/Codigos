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


# Ou uma versão nova usando uma biblioteca

## Para executar o projeto

Instalar o virtualenv
```bash
sudo apt install python3-virtualenv
```

Criar um ambiente virtual (Linux/MacOS)
```bash
virtualenv venv
```
ou
```bash
virtualenv -p python3 venv
```

Criar um ambiente virtual (Windows)
```bash
python -m virtualenv venv
```

Ativar o ambiente virtual venv (Linux/MacOS)
```bash
. venv/bin/activate
```
ou
```bash
source venv/bin/activate
```

Ativar o ambiente virtual venv (Windows)
```bash
venv/Scripts/activate
```

Atualizar o pip
```bash
pip install --upgrade pip
```

Depois de instalar uma nova biblioteca exporte novamente as bibliotecas usadas para o arquivo `requirements.txt`
```bash
pip freeze > requirements.txt
```
