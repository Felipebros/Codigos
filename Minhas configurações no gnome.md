```bash
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
```
Para encontrar quais comandos estão utilizando os atalhos
```bash
gsettings list-recursively | grep -i '<Control><Shift><Alt>'
```
ou
```bash
gsettings list-recursively | grep -i 'Super_R'
```
Para resetar um atalho de um comando
```bash
gsettings reset org.gnome.desktop.wm.keybindings panel-main-menu
```
 
