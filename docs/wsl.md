# WSL 2

## Para instalar o WSL
1. O recurso "Subsistema do Windows para Linux" tem que estar ativado,
se der erro precisa ativar

- No Windows 11 por exemplo, abra o Painel de Controle antigo:
  > Painel de Controle\Programas\Programas e Recursos
- Clique no Botão "Ativar ou desativar recursos do Windows".
- Marque a opção "Subsistema do Windows para Linux" e clique no botão "OK".

2. Executar o comando abaixo no PowerShell
```PowerShell
wsl --install
```

## Para atualizar o WSL
Execute esse comando no PowerShell
```PowerShell
wsl --update
```

## Para definir o WSL 2 como padrão
Execute esse comando no PowerShell
```PowerShell
wsl --set-default-version 2
```

## Alterar idioma do Ubuntu no WSL
https://www.vivaolinux.com.br/topico/Debian-para-iniciantes/Problema-com-locale

## Para instalar sistemas GUI
https://learn.microsoft.com/pt-br/windows/wsl/tutorials/gui-apps

## Outros tutoriais
https://github.com/codeedu/wsl2-docker-quickstart?tab=readme-ov-file#docker-engine-docker-nativo-diretamente-instalado-no-wsl2
