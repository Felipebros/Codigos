## Para saber a arquitetura execute o seguinte comando:
lscpu

## Para verificar o fabricante, o modelo execute o comando abaixo:
cat /proc/cpuinfo | grep vendor | uniq

## Agora que você já sabe o fabricante, vamos descobrir o modelo:
cat /proc/cpuinfo | grep ‘model name’ | uniq
## Agora vamos verificar a frequência, você pode um dos dois comandos abaixo:
lscpu | grep -i mhz
# ou
cat /proc/cpuinfo | grep -i mhz | uniq
## Nota: Não se assuste se a frequência for menor do que a que consta no site do fabricante, alguns processadores podem apresentar esta variação devido a estarem configurados para economizar energia.
## Caso queira ver as variações de frequência você pode executar o comando abaixo:
watch -n 0.1 “cat /proc/cpuinfo | grep -i mhz”
## Agora, para saber o número de núcleo do processador, execute o comando abaixo:
lscpu

## Nota: O item que mostra os núcleos é o Core(s) per socket.

(adsbygoogle = window.adsbygoogle || []).push({});
