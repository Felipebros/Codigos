## Instalar TeamViewer 7
Não funcionou
```bash
sudo apt-get install libjpeg62
```
```bash
sudo dpkg -i teamviewer_linux_x64.deb
```
Se der erro execute
```bash
sudo apt-get -f install
```
Para desinstalar
```bash
sudo apt-get remove teamviewer --auto-remove
```
https://www.edivaldobrito.com.br/teamviewer-no-linux-manualmente/
https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/how-to-install-teamviewer-on-ubuntu-14-10.html

Verificar se porta está aberta
```bash
telnet 192.168.0.3 5432
```

Ver Ip
```bash
ip addr show
```

Horas e tempo ligado
```bash
uptime
```

Ver data e hora
```bash
date
```

Ver pasta do comando/programa
```bash
which at
```

Escolher java padrão
```bash
sudo update-alternatives --config java
```

## alterar fuso horario linux terminal
dpkg-reconfigure tzdata

## talvez funcione alterar fuso horario linux terminal na pasta /home
tzselect

## ver usuarios da maquina
getent passwd

## listar arquivos ocultos, como .pgpass
ls -al

## Listar programas instalados com pausa usando barra de espaço para passar
dpkg -l | more

## Listar pausadamente o resultado de um código pode usar
| less
por exemplo ls -la | less
# ou
| more

## Com chmod 0600 apra .pgpass
chmod 0600 .pgpass

## chmod para pasta e subpastas
chmod 777 backups/* -R

## Ver tamanho da pasta
du -lhs

## Atualizar pacotes e usar dois comandos em uma só linha &&
sudo apt-get update && sudo apt-get upgrade



## Compactar e Descompactar Com TAR
Com o TAR você compacta uma pasta “sos” e seu conteúdo para um arquivo “sos.tar.gz” com o seguinte comando:

tar --ignore-failed-read -cvzf sos.tar.gz sos

Notem que acrescentei um parâmetro para ignorar falha de leitura caso existam arquivos com permissões que você não tenha acesso.

Para descompactar o mesmo arquivo use o comando:

tar -xvzf sos.tar.gz



##Dominio funcionar
Vai ao Prompt do Dos e digite nslookup

depois digite o domínio teste.com
Observe que no DNS do meu provedor ainda não atualizou.

Ainda dentro do nslookup, digite server 8.8.8.8
Este é o DNS da Google
Redigite o domínio teste.com
Você verá que funciona.



chmod -R 777 diretorio

chmod -R 777 diretorio




deu certo
sudo chmod u=rwx .gitignore 

## transformar em proprietario
chown www-data:www-data -R /var/www/
chown www-data:usuario -R /var/www/
sudo chown usuario:usuario -R /var/www/
sudo chown felipe:felipe -R /var/www/
chown www-data:usuario -R /var/www/
# Permissão
sudo chmod -R 774 /var/www/html/


# Montar pasta para wine acessar normalmente para ir no wine e criar mapeamento de rede, mesmo assim não funcionou ficou somente leitura
Monta uma pasta de acesso de uma pasta de rede no linux
```bash
sudo mount -t cifs -o username=felipe,password=123,uid=1000,gid=1000,file_mode=0777,dir_mode=0777,nounix //192.168.100.24/c /mnt/share/sgbr-rede
```
Acesse as configurações do wine e crie uma unidade mapeada
```bash
winecfg
```
Para desmontar
```bash
sudo umount -t cifs /mnt/share/sgbr-rede
```


## Adicionar usuário ao mesmo grupo de usuário para poder mexer na pasta ou arquivo
```bash
usermod -m -G ADM usuario
```

deu certo
```bash
sudo chmod u=rwx /var/www/html
```
deu certo mas não precisa
```bash
sudo usermod -G grupo usuario]
```
```bash
usermod -G ADM usuario
```
```bash
sudo usermod -G www-data usuario
```
```bash
sudo usermod -G usuario www-data
```
```bash
sudo usermod -G adm usuario
```

# teste
sudo usermod -G adm usuario
sudo usermod -G cdrom usuario
sudo usermod -G sudo usuario
sudo usermod -G dip usuario
sudo usermod -G plugdev usuario
sudo usermod -G lpadmin usuario
sudo usermod -G sambashare usuario

sudo gpasswd -a usuario grupo

Amigão,
Digite o comando abaixo:
# less /etc/group => vai até o final da linha, você vera quais os grupos tem no seu servidor e quais usuários façam parte de cada determinado grupo.

Caso você quer adicionar o usuário a um grupo digite o seguinte comando:
# gpasswd –a nome_do_usuário nome_do_grupo

Caso você pretende definir a senha do usuário no samba digite o comando:
# smbpasswd –a nome_do_usuário 

(OBS.:) a senha que será definida deve ser a mesma senha do usuário quando você criou ele. 
Amigão, caso você tenha mais duvida é só postar, você disse que instalou o SAMBA mais não sei se você já configurou, caso surja mais duvida pode postar.
Abraço, 


## Criar senha para root
sudo passwd root


## Dando permissão de sudo para o usuário
# Acesse su root para acessar o root e abra este arquivo e edite
nano /etc/sudoers
# Coloque abaixo dessa linha root o nome do seu usuário
root    ALL=(ALL:ALL) ALL
usuario  ALL=(ALL) ALL


## Dicas de segurança no Linux
https://e-tinet.com/linux/servidor-linux-dicas-seguranca/


## Usando at
echo "php /home/usuario/criar_txt.php" | at now +1 minute
ou
at now +1 minute <<< "php /home/usuario/criar_txt.php"


## cdrom terminal
eject
mount -t iso9660 /dev/cdrom /mnt/cdrom
umount -t iso9660 /dev/cdrom /mnt/cdrom
eject -t


## Listar ips da rede
Cara, usa o nmap (tem na maioria dos linux)
Ex:
# nmap -sP 192.168.254.1/24

Escaneia a rede que tem o tal ip 192.168.254.0 e netmask /24 e dá o relatório de quantos endereços estão ativos

# nmap -A 200.192.74.33/16

Escaneia a rede que tem o ip 200.192.0.0 e netmask /16 e dá o relatório de quantos endereços estão ativos, quais as portas abertas e 'chuta' (estima) qual o provável sistema operacional utilizado...

Como a sua rede é local, recomendo que use a netmask /24 e a opção -sP, só pra ver quais estão ativos. Assim o comando fica:

# nmap -sP XXX.XXX.XXX.XXX/24

onde o XXX.XXX.XXX.XXX é um endereço de ip dentro dessa rede.

Ajudei?? Espero que sim!
Eu fiz um script, que está pra ser publicado aqui no vivaolinux, chamado "netscan.sh". Procura daqui a alguns dias que deverá estar disponível!

Se quiser, me envie um email pra fe_prestes@yahoo.com.br que eu te mando.

Um abraço!

## Como contar a quantidade de arquivos dentro de um diretório no Linux
# Para contar a quantidade de arquivos contidos em um diretório recursivametne (incluindo todos os subdiretórios), basta usar o seguinte comando:

find DIR_NAME -type f | wc -l

# Em que DIR_NAME deve ser substitituído pelo caminho do diretório que você deseja contar os arquivos. O resultado será a contagem de arquivos dentro deste diretório e todos os subdiretórios. Também é possível limitar o comando acima para que ele conte somente os arquivos do diretório ignorando os subdiretórios. Para isso, basta usar a opção “maxdepth”, da seguinte forma:

find . -maxdepth 1 -type f | wc -l
# A opção “maxdepth 1” limita a profundidade de busca somente no 1o nível, ou seja, somente o diretório corrente. Caso fosse especificado “maxdepth 2”, ele permitiria a contagem até o 2o nível de diretórios. E assim por diante.



## Conhecendo o Terminal

Os comandos de linha de texto do Linux são digitados no terminal. No Ubuntu, ele pode ser acessado através do menu Aplicativos > Acessórios > Consola. Também é possível acessá-lo após pressionar ALT+F2 e digitar Terminal.


Copiar e Colar por linha de comando
Considere um arquivo teste.txt gravado em /home (diretório padrão do linux), dessa forma temos o seguinte caminho: /home/teste.txt.

Suponhamos que preciso copiar este arquivos para a pasta /home/exemplo, então execute:

cp /home/teste.txt /home/exemplo
Pronto, o comando cp copia arquivos ou diretórios de maneira muito prática pelo terminal.

Agora suponha que você precisa recortar (mover) o arquivo da pasta /home para a pasta /home/exemplo.

mv /home/teste.txt /home/exemplo

Note: o comando cp copia e o comando mv move o arquivo ou pasta, sendo que o primeiro parametro indica o arquivo ou pasta e o segundo o destino para onde quer colocar o arquivo ou pasta.

Pronto, um único comando e o arquivo será copiado movido para o local indicado.


Renomear arquivos
Mas este comando também nos permite renomear arquivos, podemos fazer isso através do seguinte comando:

mv teste.txt teste.sql
Ou se preferir pode fazer uma cópia do arquivo dentro do mesmo diretório, dessa forma:

cp teste.txt teste.sql
Em ambos os casos será criado o arquivo teste.sql a diferença é que usando o cp apenas cria o novo arquivo usando mv será mantido apenas o arquivo teste.sql

Copiando e Movendo Diretórios
Para copiar diretórios ou pastas no linux é a mesma coisa, apenas precisa tomar cuidado quando o diretório possuir arquivos dentro dele. Quando isso acontecer se você executar um comando mv para renomear os arquivos será igual. Vamos criar um arquivo e fazer alguns testes, execute:

mkdir diretorio
Agora vamos fazer uma cópia do arquivo de teste.txt para dentro do diretório criado:

cp teste.txt ./diretorio
Agora vamos renomear o arquivo:

mv diretorio diretorio-01
Beleza o diretorio foi renomeado, agora vamos tentar fazer uma cópia do diretório:

cp diretorio-01 diretorio-02
O seguinte erro vai ser mostrado: cp: omitindo o diretório-02 'diretorio-01'.

Isso aconteceu porque o diretório não está mais vazio. Então como resolver este problema? Adicionaremos um parâmetro ao comando para ativar a recursividade, isso dirá para o Sistema Operacional que deve copiar a pasta e o que mais estiver dentro dela, o parâmetro será o -r. Veja:

cp -r diretorio-01 diretorio-02
Pronto! É simples e prático trabalhar com arquivos e diretórios usando o terminal do Linux ou Mac.

Não esqueca de deixar suas dúvidas nos comentários e compartilhar este post.



Comandos Básicos do Linux


Manipulação de Arquivos e Diretórios

cd

O comando “cd” serve para acessar e mudar de diretório corrente. Ele é utilizado para a navegação entre as pastas do computador.
Exemplo: cd /home/baixaki/Desktop – Acessa a pasta correspondente à área de trabalho do usuário baixaki.

pwd

Exibe a pasta atual na qual o usuário se encontra.
Exemplo: Se o usuário baixaki digitar cd ~/ e em seguida digitar pwd, o retorno será /home/baixaki .

ls

Exibe os arquivos que estão dentro da pasta na qual o usuário está no momento.
Para usá-lo basta digitar ls. Existem variações, tais como ls -l, com a qual é possível obter informações mais detalhadas sobre os arquivos, como permissões e tamanho.

cp

Copia arquivos – o famoso CTRL+C + CTRL+V. Exemplo:
$ cp Exemplo.doc /home/baixaki/Trabalho/EXEMPLO.doc  - O arquivo EXEMPLO.doc foi copiado para a pasta /home/baixaki/Trabalho com o mesmo nome.

mv

O comando "mv" tem a função de mover arquivos. A utilização dele é praticamente igual  a do comando cp. Exemplo:
$ mv MV.txt /home/baixaki/Trabalho/MV.txt  - O arquivo MV.txt foi movido para a pasta /home/baixaki/Trabalho com o mesmo nome.
$ mv MV.txt  VM.txt – O arquivo MV.txt continuou onde estava, porém, agora possui o nome de VM.txt.

rm

O "rm" tem a função de remover arquivos. Tome cuidado ao utilizá-lo, pois caso você remova algum arquivo por engano, o erro será irreversível.
Exemplo: rm /home/baixaki/Arquivo.txt – O arquivo Arquivo.txt localizado na pasta /home/baixaki foi deletado.

rmdir

Este comando tem a função de  remover diretórios vazios. Exemplo: rmdir TESTE – Neste exemplo, o diretório vazio TESTE foi removido do local onde o usuário se encontrava.

Também é possível remover diretórios através de uma variação do comando rm: rm -r. Neste caso, o comando rm -r TESTE realizaria a mesma tarefa, porém, o diretório não precisa estar vazio.

mkdir

Enquanto o rmdir remove, este comando cria diretórios.
Exemplo: mkdir DIRETORIO – A pasta DIRETORIO foi criada no local onde o usuário se encontrava.

Outros Comandos

cat

O "cat" exibe o que há dentro de determinado arquivo. Ele é útil quando deseja ler ou exibir um arquivo de texto.
Exemplo: cat TEXTO.txt – Exibe o conteúdo do arquivo TEXTO.txt

file

Este comando informa qual é o tipo de arquivo que foi digitado como parâmetro.
Exemplo: file TEXTO.txt – Retorna a informação que é um arquivo de texto.

clear

O "clear" serve para limpar a tela do terminal. O mesmo ocorre quando se pressiona CTRL+L.

man

O comando "man" exibe a função de determinado comando. Ele é muito útil quando não se sabe o que um comando faz, ou quando se pretende aprender mais sobre a sua utilização. Aconselha-se a leitura do manual sempre que houver dúvidas.

Exemplo: man ls – Exibe o que faz o comando ls e quais são suas variações.
man man – Exibe o que o comando man faz.
Para sair do man pressione o tecla “q”.

Por padrão, o man vem configurado para o inglês. No Ubuntu, você pode deixá-lo em português através do comando  $ sudo apt-get install manpages-pt manpages-pt-dev , porém alguns comando continuarão em inglês.

Estes são alguns dos principais comandos existentes no sistema Linux. Eles são ferramentas poderosas que podem auxiliar na realização de tarefas, simplificando-as e tornando a execução mais ágil. Contudo, há muito mais, portanto, quanto mais você conhecer, maior será sua produtividade com o Linux.
