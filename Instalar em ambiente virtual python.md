# Criar e Instalar em um ambiente virtual em python

## Instale no Ubuntu os programas essenciais para desenvolvimento
```bash
sudo apt install build-essential
```
```bash
sudo apt install libpq-dev python3-dev
```

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


# Ou uma nova versão usando uma biblioteca

## Instalar o virtualenv
```bash
sudo apt install python3-virtualenv
```

## Criar um ambiente virtual (Linux/MacOS)
```bash
virtualenv venv
```
ou
```bash
virtualenv -p python3 venv
```

## Criar um ambiente virtual (Windows)
```bash
python -m virtualenv venv
```

## Ativar o ambiente virtual venv (Linux/MacOS)
```bash
. venv/bin/activate
```
ou
```bash
source venv/bin/activate
```

## Ativar o ambiente virtual venv (Windows)
```bash
venv/Scripts/activate
```

## Atualizar o pip
```bash
pip install --upgrade pip
```

## Depois de instalar uma nova biblioteca exporte novamente as bibliotecas usadas para o arquivo `requirements.txt`
```bash
pip freeze > requirements.txt
```

# Instalar várias versões do python
https://github.com/pyenv/pyenv-installer

```bash
curl https://pyenv.run | bash
```

## Para adiconar no PATH do linux
https://github.com/pyenv/pyenv#set-up-your-shell-environment-for-pyenv

```bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
```
```bash
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
```
```bash
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
```

### Feche e abra o seu terminal novamente

## Para listar as versões disponíveis para instalação

```bash
pyenv install -list
```

## Para instalar uma versão em específico

```bash
pyenv install 3.8.20
```
