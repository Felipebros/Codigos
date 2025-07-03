sudo apt update; sudo apt upgrade  # procura e aplica novas atualizações
tree -if diretório/  # lista os arquivos dessa maneira diretório/pasta/arquivo-teste.txt
git log --pretty=format:"- %s" --reverse  # retorna uma lista de commits do mais antigo para o mais novo
history -d 26-36  # deleta o histórico de comando do 4 ao 6 depois disso precisa executar history -w para salvar
history -w  # salva o histórico de comandos alterados
sed -i '12,22d' ~/.bash_history
w3m https://whatismyipaddress.com/  # meuip
w3m https://meuip.com.br/  # meuip2
w3m https://meuip.com.br/tools-geo # geoip localização do ip
history | head -n 10  # mostra os 10 primeiros históricos de comandos
history  # mostra todo o histórico de comandos
history -d 12  # deleta o histórico de comando 12 depois disso precisa executar history -w para salvar
git checkout -b nome-da-branch  # cria uma branch
. .venv/bin/activate  # ativa a venv
python -m pip install --upgrade pip setuptools  # atualiza o pip
pip install -r requirements.txt  # instala as bibliotecas que estão no arquivo requirements.txt
sed -i -e '2d'  # deleta a linha 2 e já salva o arquivo
sed -i -e '2,5d'  # deleta a linha 2 até a linha 5 e já salva o arquivo
fc -l 1 3  # mostra os históricos de comandos do comando 1 ao 3
dpkg -l  # lista os programas instalados no linux
mkdir -p diretorio1/diretoriofilho  # cria vários diretórios só passando o caminho completo
git commit -m "docs: update CHANGELOG.txt"
echo '----------- Fim dos comandos importantes -----------'
