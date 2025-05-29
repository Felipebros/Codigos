# Funcionamento do GIT

## Para iniciar um GIT
```bash
git init
```

## Para Adicionar um repositório remoto
```bash
git remote add origin git@github.com:Felipebros/teste123.git
```

## Para Adicionar um repositório remoto (método antigo)
```bash
add origin https://github.com/Felipebros/teste123.git
```

## Para puxar do servidor GIT
```bash
git pull origin master
```

## Para fazer commit
```bash
git add .
```
```bash
git commit -m "first commit"
```

## Para listar os nomes dos commits em ordem reversa
```bash
git log --pretty=format:"- %s" --reverse
```

## Alterar nome da branch principal de master para main
```bash
git branch -M main
```

## Enviar push para o servidor GIT
```bash
git push -u origin main
```

## Exemplo 2 de criar git e subir para o repositório
```bash
git init
echo "# teste123" >> README.md
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:Felipebros/teste123.git
git push -u origin main
```

# Processo de contribuição no GitHub
1. Fork do projeto para o seu usuário.
2. Clone do projeto forkado na sua máquina.
3. Faça seus commits na sua branch.
4. Atualização do seu projeto com o projeto original.
5. Commitar e enviar suas alterações para o seu GitHub.
6. Abrir um pull request para o projeto original.

# Configurações do GIT

## Listar configurações
```bash
git config -l
```
## Configurar nome do usuário para o repositório atual
```bash
git config user.name "Felipe Soares Barbosa Silveira"
```
## Configurar email do usuário para o repositório atual
```bash
git config user.email "felipeiturama@gmail.com"
```
## Configurar nome do usuário para todos os repositórios
```bash
git config user.name "Felipe Soares Barbosa Silveira" --global
```
## Configurar email do usuário para todos os repositórios
```bash
git config user.email "felipeiturama@gmail.com" --global
```

## Configurando outra chave ssh para ser usada durante o clone
```bash
git clone -c core.sshCommand="ssh -i ~/.ssh/id_ed25519.nome_empresa" git@github.com:Felipebros/Codigos.git
```
## Listar configurações
```bash
git config -l
```
## Configurando outra chave ssh para ser usada depois de clonar
```bash
git config core.sshCommand "ssh -i ~/.ssh/id_ed25519.nome_empresa -o 'IdentitiesOnly yes'
```
## Removendo a configuração da chave ssh a ser utilizada no repositório
```bash
git config --unset-all core.sshcommand
```
