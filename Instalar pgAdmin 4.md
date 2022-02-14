# Instalar pgAdmin 4

```bash
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
```
```bash
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
```
```bash
sudo apt install pgadmin4
```
```bash
sudo /usr/pgadmin4/bin/setup-web.sh
```

