# Acesse o link https://github.com/nvm-sh/nvm#installing-and-updating ou siga os comandos abaixo para instalar no bash
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
```

# Em vez de reiniciar a concha ou shell ou reinicie o shell
```bash
\. "$HOME/.nvm/nvm.sh"
```

# Descarregar e instalar a Node.js:
```bash
nvm install --lts
```
## ou
```bash
nvm install 22
```

# Se quiser instalar o yarn
```bash
npm install --global yarn
```

# Consultar a versão da Node.js:
```bash
node -v  # Deveria imprimir "v22.15.1".
```
```bash
nvm current  # Deveria imprimir "v22.15.1".
```
# Consultar a versão da npm:
```bash
npm -v  # Deveria imprimir "10.9.2".
```
