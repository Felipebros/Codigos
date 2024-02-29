## Configurar ssl https no Google Cloud
https://www.onepagezen.com/free-ssl-certificate-wordpress-google-cloud-click-to-deploy/
# Ativar renovação automatica
https://www.onepagezen.com/letsencrypt-auto-renew-certbot-apache/
```bash
sudo mv certbot-auto /etc/letsencrypt/
```
```bash
sudo crontab -e
```
```bash
45 2 * * 6 cd /etc/letsencrypt/ && ./certbot-auto renew && /etc/init.d/apache2 restart
```
# Para forçar a renovação da chave
```bash
sudo -i
```
```bash
cd /etc/letsencrypt/ && ./certbot-auto renew --dry-run && /etc/init.d/apache2 restart
```
#
```bash
openssl x509 -noout -dates -in /etc/letsencrypt/live/progenbr.com/cert.pem
```


## Gerar chave ssl para o https localhost de um ano
```bash
openssl req -x509 -out localhost.crt -keyout localhost.key   -newkey rsa:2048 -nodes -days 365 -sha256   -subj '/CN=localhost' -extensions EXT -config <( \
   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
```

## Configurar o apache para abrir o certificado ssl
https://www.digitalocean.com/community/tutorials/how-to-create-a-ssl-certificate-on-apache-for-ubuntu-14-04
# Ativar o modulo ssl
```bash
sudo a2enmod ssl
```
```bash
sudo service apache2 restart
```
# Configurar o apache para abrir o certificado ssl
```bash
sudo nano /etc/apache2/sites-available/default-ssl.conf
```
# Mude para ficar mais ou menos assim (sem os comentários para ficar mais fácil de ver)
```bash
<IfModule mod_ssl.c>
    <VirtualHost _default_:443>
        ServerAdmin admin@example.com
        ServerName your_domain.com
        ServerAlias www.your_domain.com
        DocumentRoot /var/www/html
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
        SSLEngine on
        SSLCertificateFile /etc/apache2/ssl/apache.crt
        SSLCertificateKeyFile /etc/apache2/ssl/apache.key
        <FilesMatch "\.(cgi|shtml|phtml|php)$">
                        SSLOptions +StdEnvVars
        </FilesMatch>
        <Directory /usr/lib/cgi-bin>
                        SSLOptions +StdEnvVars
        </Directory>
        BrowserMatch "MSIE [2-6]" \
                        nokeepalive ssl-unclean-shutdown \
                        downgrade-1.0 force-response-1.0
        BrowserMatch "MSIE [17-9]" ssl-unclean-shutdown
    </VirtualHost>
</IfModule>
```

# Ativar host virtual de ssl
```bash
#sudo a2ensite default-ssl.conf
```
```bash
sudo a2ensite default-ssl
```
```bash
sudo a2enmod ssl
```
```bash
sudo service apache2 restart
```

## Para permitir o chrome de certificados não confiáveis
chrome://flags/#allow-insecure-localhost
# Mude para enable

## Para mudar o local de qual certificado o php vai usar também
https://pt.stackoverflow.com/questions/136998/erro-de-ssl-com-file-get-contents
# No php.ini que esta em /etc/php/7.0/apache2
```bash
sudo nano /etc/php/7.0/apache2/php.ini
```
# Procurar por openssl.cafile = /caminho/do/cacert.pem

## Certificado autoassinado por apache
```bash
make-ssl-cert generate-default-snakeoil --force-overwrite
```
# Ou
```bash
sudo make-ssl-cert /usr/share/ssl-cert/ssleay.cnf /path/to/cert-file.crt
```

## Certificado Google Cloud
```bash
/etc/letsencrypt/live/progenbr.com/fullchain.pem
```

IMPORTANT NOTES:
 - Congratulations! Your certificate and chain have been saved at:
   /etc/letsencrypt/live/progenbr.com/fullchain.pem
   Your key file has been saved at:
   /etc/letsencrypt/live/progenbr.com/privkey.pem
   Your cert will expire on 2018-10-09. To obtain a new or tweaked
   version of this certificate in the future, simply run certbot-auto
   again. To non-interactively renew *all* of your certificates, run
   "certbot-auto renew"
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
 - If you like Certbot, please consider supporting our work by:

   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le
