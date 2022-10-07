## Para instalar o docker-compose
* Instalar Docker https://docs.docker.com/engine/install/
* Instalar Docker-compose https://docs.docker.com/compose/install/
* Dar permissão ao docker
    ```bash
    sudo chmod 666 /var/run/docker.sock
    ```


* Instale o AWS CLI
    https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
* (somente leitura) Seguindo o passo a passo de como usar
    https://docs.aws.amazon.com/pt_br/AmazonECR/latest/userguide/getting-started-cli.html
* Execute o aws configure para configurar o AWS Access Key ID e AWS Secret Access Key
    https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html
* Se der erro o erro abaixo
    ```bash
    docker.errors.DockerException: Error while fetching server API version: ('Connection aborted.', PermissionError(13, 'Permission denied'))
    [415140] Failed to execute script docker-compose
    ```
    adicionar seu usuário ao grupo de usuários `docker`
    ```bash
    sudo gpasswd -a $USER docker
    newgrp docker
    ```
