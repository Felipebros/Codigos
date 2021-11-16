```bash
cd /etc/apache2/sites-available
```
```bash
sudo nano teste.conf
```
insira o texto abaixo dentro desse novo arquivo
```sh
<VirtualHost *:80>

        <Directory /home/usuario/minha_pasta/>
                Options Indexes FollowSymLinks
                AllowOverride All
                Require all granted
        </Directory>

        DocumentRoot /home/usuario/minha_pasta

</VirtualHost>
```
com o comando abaixo você desabilita a configuração padrão
```bash
a2dissite 000-default.conf
```
com o comando abaixo você habilita a sua configuração personalizada
```bash
a2ensite teste.conf
```

```bash
service apache2 restart
```
