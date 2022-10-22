deletei a partição do swap, criei outra, executei esses comandos de ativar ele, https://www.vivaolinux.com.br/topico/Suporte/Erro-na-inicializacao-A-start-job-is-running-for-dev-disk-by

1- Olhar no gparted o uuid da partição, isso é outra maneira -> como root no primeiro sistema instalado onde aparece essa mensagem use o comando: ls -l /dev/disk/by-uuid

e veja a uiid da sua partição swap, ex: que se fosse a sda4 : lrwxrwxrwx 1 root root 10 Oct 27 13:16 cfa74c40-1234-4fee-a2d5-e8c789c629f0 -> ../../sda4

2- com seu editor de texto abra o arquivo fstab:
```bash
sudo nano /etc/fstab
```

# swap was on /dev/sda4 during installation
UUID=f97a6afb-3447-4616-bfa3-123be50f9fa5 none swap sw 0 0

3- edite o arquivo fstab colocando a nova uuid na partição swap no caso a sda4 e salve o arquivo :

# swap was on /dev/sda4 during installation
UUID=cfa74c40-1234-4fee-a2d5-e8c789c629f0 none swap sw 0 0

Comigo só com esses 3 passos já funcionou, e o de sistema iniciou normalmente sem a mensagem de erro e o contador.

mas se quiser faca o quarto passo:

4-recrie a partição swap e atribua um novo uuidu use os comandos de acordo com sua partição e uiid,exemplo para swap em sda4 e uuid cfa74c40-1234-4fee-a2d5-e8c789c629f0 :

```bash
swapoff /dev/sda4
```
```bash
mkswap -U cfa74c40-1234-4fee-a2d5-e8c789c629f0 /dev/sda4
```
```bash
swapon -a
```

ai deu erro, ai eu peguei o uuid do gparted e coloquei no arquivo como mostra nesse vídeo https://www.youtube.com/watch?v=h23oQr8Nvqc
