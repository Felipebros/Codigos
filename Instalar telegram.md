# Instalar telegram no Linux Ubuntu
https://www.edivaldobrito.com.br/telegram-no-ubuntu-fedora/

## Passo 1. Abra o terminal (com o atalho CTRL + ALT + T)

## Passo 2. Adicione o repositório do telegram com este comando, se ainda não tiver
sudo add-apt-repository ppa:atareao/telegram

## Passo 3. Atualize os repositório do gerenciador de pacote
sudo apt-get update

## Passo 4. Este comando instala o Telegram
sudo apt-get install telegram

## Passo 5. Este comando abaixo desinstala o Telegram
sudo apt-get remove telegram && sudo apt-get autoremove
