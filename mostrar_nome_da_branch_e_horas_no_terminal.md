Mostrar nome da branch no terminal, basta inserir no final do arquivo `~/.bashrc`  fechar e abrir o terminal novamente https://warcontent.com/branch-git-no-terminal/
```bash
# show git branch
export PS1='\[\033[1;32m\]\u@\h\[\033[01;34m\] \w\[\033[0;32m\]$(__git_ps1 " (%s)")\[\033[0m\]$\[\033[00m\] '
```
Ou com hora minuto e segundo
```bash
# show git branch
export PS1='\[\033[1;32m\]\u@\h\[\033[01;34m\] \w\[\033[0;32m\] $(__git_ps1 "(%s)")\[\033[0;37m\]$(date +%X)\[\033[0m\]$\[\033[00m\] '
```
