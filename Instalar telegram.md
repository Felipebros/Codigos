# Instalar o Telegram no Linux Ubuntu
https://www.edivaldobrito.com.br/telegram-no-ubuntu-fedora/

## Passo 1. Abra o terminal (com o atalho CTRL + ALT + T)

## Passo 2. Adicione o repositório do telegram com este comando, se ainda não tiver
```bash
sudo add-apt-repository ppa:atareao/telegram
```

## Passo 3. Atualize os repositório do gerenciador de pacote
```bash
sudo apt-get update
```

## Passo 4. Este comando instala o Telegram
```bash
sudo apt-get install telegram
```

## Passo 5. Este comando abaixo desinstala o Telegram
```bash
sudo apt-get remove telegram && sudo apt-get autoremove
```


# Se os acentos não estão funcionando no Telegram
## Coloque isto no início do seu atalho, no capo de Comando
```bash
env QT_IM_MODULE=xim
```
## Ficando dessa forma
```bash
env QT_IM_MODULE=xim /opt/telegram/telegram -- %u
```
