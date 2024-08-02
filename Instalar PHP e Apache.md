## Instalação funcionando 8.2
```bash
sudo apt install php8.2-pgsql php8.2-gd php8.2-intl php8.2-xsl php8.2-mbstring php8.2-curl php8.2-cli php8.2-xml php8.2-opcache php8.2-gmp php8.2-zip php8.2-mysql php8.2-common php8.2-xmlrpc php8.2-imagick php8.2-dev php8.2-imap php8.2-soap php8.2-pcov php8.2-xdebug -y
```
```bash
sudo update-alternatives --set php /usr/bin/php8.2
```
```bash
sudo apt install libapache2-mod-php8.2
```
```bash
sudo a2dismod php7.4
```
```bash
sudo a2enmod php8.2
```
```bash
sudo systemctl restart apache2
```

## Instalação funcionando 7.3
```bash
sudo apt install python-software-properties
```
```bash
sudo add-apt-repository ppa:ondrej/php
```
```bash
sudo apt update
```
```bash
sudo apt install php7.3
```

# sudo apt install php7.3 e [TAB] para listar os componentes
```bash
sudo apt install php7.3-pgsql php7.3-gd php7.3-intl php7.3-xsl php7.3-mbstring php7.3-curl php7.3-cli php7.3-json php7.3-xml php7.3-opcache php7.3-gmp php7.3-zip php7.3-mysql
```
```bash
sudo update-alternatives --set php /usr/bin/php7.3
```
```bash
sudo a2dismod php7.0
```
```bash
sudo a2enmod php7.3
```
```bash
sudo systemctl restart apache2
```

# encontrar arquivo de configuração do php
```bash
php -i | grep "Loaded Configuration File"
```

## PHP.ini aumentar limite de inputs
# Valor padrão max_input_vars = 1000
```bash
sudo nano /etc/php/7.3/apache2/php.ini
```
```bash
sudo nano /etc/php/7.3/cli/php.ini
```
max_input_vars = 6000
```bash
sudo service apache2 restart
```

## Instalação funcionando 7.4
(https://www.cloudbooklet.com/upgrade-php-version-to-php-7-4-on-ubuntu/)
```bash
sudo apt install software-properties-common
```
```bash
sudo add-apt-repository ppa:ondrej/phpsudo
```
```bash
apt update
```
```bash
sudo apt install php7.4-common php7.4-pgsql php7.4-gd php7.4-intl php7.4-xsl php7.4-mbstring php7.4-curl php7.4-cli php7.4-json php7.4-xml php7.4-opcache php7.4-gmp php7.4-zip php7.4-mysql php7.4-xmlrpc php7.4-imagick php7.4-dev php7.4-imap php7.4-soap -y
```
```bash
sudo update-alternatives --set php /usr/bin/php7.4
```
```bash
sudo apt install libapache2-mod-php7.4
```
```bash
sudo a2dismod php7.3
```
```bash
sudo a2enmod php7.4
```
```bash
sudo systemctl restart apache2
```

## Instalação funcionando 8.1
```bash
sudo apt install php8.1-pgsql php8.1-gd php8.1-intl php8.1-xsl php8.1-mbstring php8.1-curl php8.1-cli php8.1-xml php8.1-opcache php8.1-gmp php8.1-zip php8.1-mysql
```
```bash
sudo apt install php8.1-common php8.1-mysql php8.1-xml php8.1-xmlrpc php8.1-curl php8.1-gd php8.1-imagick php8.1-cli php8.1-dev php8.1-imap php8.1-mbstring php8.1-opcache php8.1-soap php8.1-zip php8.1-intl -y
```
```bash
sudo update-alternatives --set php /usr/bin/php8.1
```
```bash
sudo apt install libapache2-mod-php8.1
```
```bash
sudo a2dismod php7.4
```
```bash
sudo a2enmod php8.1
```
```bash
sudo systemctl restart apache2
```

## Instalação funcionando 7.0
```bash
sudo apt-get remove apache2 php7.0
```
```bash
sudo apt-get update
```
```bash
sudo apt-get install apache2
```
```bash
sudo apt-get install php7.0 php7.0-mcrypt php7.0-pgsql php7.0-gd php7.0-intl php7.0-xsl php7.0-mbstring
```
```bash
sudo apt-get install php libapache2-mod-php
```
```bash
sudo nano /etc/apache2/apache2.conf
```
# Criar na última linha se não tiver para
serverName localhost
```bash
sudo systemctl restart apache2
```
```bash
sudo service apache2 restart
```

https://www.digitalocean.com/community/tutorials/como-instalar-a-pilha-linux-apache-mysql-php-lamp-no-ubuntu-16-04-pt#passo-2-instalar-o-mysql

## Instalar composer
https://getcomposer.org/download/
https://www.phpmaranhao.com.br/tag/instalando-o-composer/
```bash
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
```
```bash
php composer-setup.php
```
```bash
php -r "unlink('composer-setup.php');"
```
```bash
sudo mv composer.phar /usr/local/bin/composer
```

## Rodar composer
```bash
composer "--ansi" "--no-interaction" "update" "--no-dev"
```

## deixar composer gravar cache
```bash
sudo chown -R $USER $HOME/.composer
```

## permitir composer de executar pelo terminal
```bash
sudo phpenmod gd
```
```bash
sudo apt-get install php7.0-gd
```
```bash
sudo apt-get install php7.0-intl
```
```bash
sudo apt-get install php7.0-xsl
```
```bash
sudo apt-get install php7.0-mbstring
```
```bash
sudo apt-get install php7.0-curl
```
https://stackoverflow.com/questions/39384644/extension-gd-is-missing-from-your-system-laravel-composer-update

##ver gd
```bash
php --info | grep -i gd
```

```bash
composer require phpmailer/phpmailer
```
## reiniciar o apache e php
```bash
sudo systemctl restart apache2
```

## também reinicia, só que não estava no tutorial, Fabio disse
```bash
sudo service apache2 restart
```

## remover index.php codeigniter habilitando RewriteCond
```bash
sudo a2enmod rewrite
```
```bash
service apache2 restart
```

# acessa o arquivo:
```bash
sudo nano /etc/apache2/apache2.conf
```

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
```bash
sudo a2dismod php7.0
```
```bash
sudo a2enmod php7.2
```
https://thishosting.rocks/install-php-on-ubuntu/
https://jakelprice.com/article/how-to-upgrade-from-php-70-to-php-71

## PHP.ini aumentar limite de inputs
# Valor padrão max_input_vars = 1000
```bash
sudo nano /etc/php/7.0/apache2/php.ini
```
max_input_vars = 6000
```bash
sudo service apache2 restart
```

## PHP.ini para aumentar tempo de carregamento, NÃO PRECISA FAZER
#Valor padrão max_execution_time = 30
```bash
sudo nano /etc/php/7.0/apache2/php.ini
```
max_execution_time = 600
```bash
sudo service apache2 restart
```

## PHP.ini para aumentar tamanho de post e upload
```bash
sudo nano /etc/php/7.0/apache2/php.ini
```
post_max_size = 2560M
upload_max_filesize = 2560M
# não mudar por enquanto memory_limit = 128M
```bash
sudo service apache2 restart
```
