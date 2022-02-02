## Instalar postgres 9.6
https://www.postgresql.org/download/linux/ubuntu/

## Alterar senha postgres
```bash
sudo passwd postgres
```
```bash
su postgres -c psql postgres
```
```bash
ALTER USER postgres WITH PASSWORD 'senha';
```
```bash
\q
```

## Liberar acessos por login e senha nas conexões
Versão 14
```bash
sudo nano /etc/postgresql/14/main/pg_hba.conf
```
ou
Outras versões
```bash
sudo nano /etc/postgresql/<versão>/main/pg_hba.conf
```
Adicionar essa linha no final do arquivo `pg_hba.conf`
```bash
host    all             all             0.0.0.0/0               md5
```

```bash
sudo service postgresql restart
```
