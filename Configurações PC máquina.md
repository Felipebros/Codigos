## Para saber a arquitetura execute o seguinte comando:
```bash
lscpu
```

## Para verificar o fabricante, o modelo execute o comando abaixo:
```bash
cat /proc/cpuinfo | grep vendor | uniq
```

## Agora que você já sabe o fabricante, vamos descobrir o modelo:
```bash
cat /proc/cpuinfo | grep ‘model name’ | uniq
```
## Agora vamos verificar a frequência, você pode um dos dois comandos abaixo:
```bash
lscpu | grep -i mhz
```
# ou
```bash
cat /proc/cpuinfo | grep -i mhz | uniq
```
## Nota: Não se assuste se a frequência for menor do que a que consta no site do fabricante, alguns processadores podem apresentar esta variação devido a estarem configurados para economizar energia.
## Caso queira ver as variações de frequência você pode executar o comando abaixo:
```bash
watch -n 0.1 “cat /proc/cpuinfo | grep -i mhz”
```
## Agora, para saber o número de núcleo do processador, execute o comando abaixo:
```bash
lscpu
```

## Nota: O item que mostra os núcleos é o Core(s) per socket.
```bash
(adsbygoogle = window.adsbygoogle || []).push({});
```
