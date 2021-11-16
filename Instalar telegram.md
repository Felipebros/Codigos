# Instalar o Telegram no Linux Ubuntu

## Passo 1. Baixar no site do telegram
https://desktop.telegram.org/

## Passo 2. Abra o terminal (com o atalho CTRL + ALT + T)

## Passo 3. Execute o comando abaixo
```bash
tar -Jxxvf tsetup.1.9.14.tar.xz
```

## Passo 4. Mova para a pasta opt
```bash
sudo mv Telegram/ /opt/
```

## Passo 5. Rntre na pasta do Telegram
```bash
cd /opt/Telegram/
```

## Passo 6. Execute o Telegram
```bash
./Telegram
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
