## Instalação funcionando 7.3
sudo apt install python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install php7.3
# sudo apt install php7.3 e [TAB] para listar os componentes
sudo apt install php7.3-pgsql php7.3-gd php7.3-intl php7.3-xsl php7.3-mbstring php7.3-curl php7.3-cli php7.3-json php7.3-xml php7.3-opcache php7.3-gmp php7.3-zip php7.3-mysql
sudo update-alternatives --set php /usr/bin/php7.3
sudo a2dismod php7.0
sudo a2enmod php7.3
sudo systemctl restart apache2
# encontrar arquivo de configuração do php
php -i | grep "Loaded Configuration File"
## PHP.ini aumentar limite de inputs
# Valor padrão max_input_vars = 1000
sudo nano /etc/php/7.3/apache2/php.ini
sudo nano /etc/php/7.3/cli/php.ini
max_input_vars = 6000
sudo service apache2 restart

##Instalação funcionando 7.4
(https://www.cloudbooklet.com/upgrade-php-version-to-php-7-4-on-ubuntu/)
sudo apt install php7.4-pgsql php7.4-gd php7.4-intl php7.4-xsl php7.4-mbstring php7.4-curl php7.4-cli php7.4-json php7.4-xml php7.4-opcache php7.4-gmp php7.4-zip php7.4-mysql
sudo apt install php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl -y
sudo update-alternatives --set php /usr/bin/php7.4
sudo apt install libapache2-mod-php7.4
sudo a2dismod php7.3
sudo a2enmod php7.4
sudo systemctl restart apache2

## Instalação funcionando 8.1
sudo apt install php8.1-pgsql php8.1-gd php8.1-intl php8.1-xsl php8.1-mbstring php8.1-curl php8.1-cli php8.1-xml php8.1-opcache php8.1-gmp php8.1-zip php8.1-mysql
sudo apt install php8.1-common php8.1-mysql php8.1-xml php8.1-xmlrpc php8.1-curl php8.1-gd php8.1-imagick php8.1-cli php8.1-dev php8.1-imap php8.1-mbstring php8.1-opcache php8.1-soap php8.1-zip php8.1-intl -y
sudo update-alternatives --set php /usr/bin/php8.1
sudo apt install libapache2-mod-php8.1
sudo a2dismod php7.4
sudo a2enmod php8.1
sudo systemctl restart apache2

## Instalação funcionando 7.0
sudo apt-get remove apache2 php7.0
sudo apt-get update
sudo apt-get install apache2
sudo apt-get install php7.0 php7.0-mcrypt php7.0-pgsql php7.0-gd php7.0-intl php7.0-xsl php7.0-mbstring
sudo apt-get install php libapache2-mod-php
sudo nano /etc/apache2/apache2.conf
# Criar na última linha se não tiver para
serverName localhost
sudo systemctl restart apache2
sudo service apache2 restart

https://www.digitalocean.com/community/tutorials/como-instalar-a-pilha-linux-apache-mysql-php-lamp-no-ubuntu-16-04-pt#passo-2-instalar-o-mysql

## Instalar composer
https://getcomposer.org/download/
https://www.phpmaranhao.com.br/tag/instalando-o-composer/
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

## Rodar composer
composer "--ansi" "--no-interaction" "update" "--no-dev"

## deixar composer gravar cache
sudo chown -R $USER $HOME/.composer

## permitir composer de executar pelo terminal
sudo phpenmod gd
sudo apt-get install php7.0-gd
sudo apt-get install php7.0-intl
sudo apt-get install php7.0-xsl
sudo apt-get install php7.0-mbstring
sudo apt-get install php7.0-curl
https://stackoverflow.com/questions/39384644/extension-gd-is-missing-from-your-system-laravel-composer-update

##ver gd
php --info | grep -i gd

composer require phpmailer/phpmailer

## reiniciar o apache e php
sudo systemctl restart apache2

## também reinicia, só que não estava no tutorial, Fabio disse
sudo service apache2 restart

## remover index.php codeigniter habilitando RewriteCond
sudo a2enmod rewrite
service apache2 restart

# acessa o arquivo:
sudo nano /etc/apache2/apache2.conf

# Procura as linhas:

<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>
E altera para:

<Directory /var/www/>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>
# Depois disso você reinicia o apache.
sudo service apache2 restart

## Instalar 7.2
sudo a2dismod php7.0
sudo a2enmod php7.2
https://thishosting.rocks/install-php-on-ubuntu/
https://jakelprice.com/article/how-to-upgrade-from-php-70-to-php-71

## PHP.ini aumentar limite de inputs
# Valor padrão max_input_vars = 1000
sudo nano /etc/php/7.0/apache2/php.ini
max_input_vars = 6000
sudo service apache2 restart

## PHP.ini para aumentar tempo de carregamento, NÃO PRECISA FAZER
#Valor padrão max_execution_time = 30
sudo nano /etc/php/7.0/apache2/php.ini
max_execution_time = 600
sudo service apache2 restart

## PHP.ini para aumentar tamanho de post e upload
sudo nano /etc/php/7.0/apache2/php.ini
post_max_size = 2560M
upload_max_filesize = 2560M
# não mudar por enquanto memory_limit = 128M
sudo service apache2 restart
