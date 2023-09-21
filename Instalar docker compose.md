## Para instalar o docker-compose
* Instalar Docker https://docs.docker.com/engine/install/
* Instalar Docker-compose https://docs.docker.com/compose/install/
* Dar permissão ao docker
    ```bash
    sudo chmod 666 /var/run/docker.sock
    ```
## Comandos do docker
```bash
docker ps -a                # Lists containers (and tells you which images they are spun from)

docker images               # Lists images 

docker rm <container_id>    # Removes a stopped container

docker rm -f <container_id> # Forces the removal of a running container (uses SIGKILL)

docker rmi <image_id>       # Removes an image 
                            # Will fail if there is a running instance of that image i.e. container

docker rmi -f <image_id>    # Forces removal of image even if it is referenced in multiple repositories, 
                            # i.e. same image id given multiple names/tags 
                            # Will still fail if there is a docker container referencing image
```

## Instalar o AWS CLI e autorizar usuário docker
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
