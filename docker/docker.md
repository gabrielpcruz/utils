# Comandos relacionados às informações
#### Exibe a versão do docker que está instalada.
```
docker version
```
#### retorna diversas informações sobre o container.
```
docker inspect ID_CONTAINER
```
#### Exibe todos os containers em execução no momento.
```
docker ps
```
#### Exibe todos os containers, independentemente de estarem em execução ou não.
```
docker ps -a
```

# Comandos relacionados à execução
#### Cria um container com a respectiva imagem passada como parâmetro.
```
docker run NOME_DA_IMAGEM
```
#### Conecta o terminal que estamos utilizando com o do container.
```
docker run -it NOME_DA_IMAGEM
```
#### Ao executar, dá um nome ao container.
```
docker run -d -P --name NOME dockersamples/static-site
```
#### Define uma porta específica para ser atribuída à porta 80 do container, neste caso 12345.
```
docker run -d -p 12345:80 dockersamples/static-site
```
#### Cria um volume no respectivo caminho do container.
```
docker run -v "CAMINHO_VOLUME" NOME_DA_IMAGEM
```
#### Cria um container especificando seu nome e qual rede deverá ser usada.
```
docker run -it --name NOME_CONTAINER --network NOME_DA_REDE NOME_IMAGEM
```

# Comandos relacionados à inicialização/interrupção
#### Inicia o container com id em questão e integra os terminais, além de permitir interação entre ambos.
```
docker start ID_CONTAINER
```
#### Inicia o container com id em questão.
```
docker start -a -i ID_CONTAINER
```
#### Interrompe o container com id em questão.
```
docker stop ID_CONTAINER
```

# Comandos relacionados à remoção
#### Remove o container com id em questão.
```
docker rm ID_CONTAINER
```
#### Remove todos os containers que estão parados.
```
docker container prune
```
#### Remove a imagem passada como parâmetro.
```
docker rmi NOME_DA_IMAGEM
```

# Comandos relacionados à construção de Dockerfile
#### Cria uma imagem a partir de um Dockerfile.
```
docker build -f Dockerfile
```
#### Constrói e nomeia uma imagem não-oficial.
```
docker build -f Dockerfile -t NOME_USUARIO/NOME_IMAGEM
```
#### Constrói e nomeia uma imagem não-oficial informando o caminho para o Dockerfile.
```
docker build -f Dockerfile -t NOME_USUARIO/NOME_IMAGEM CAMINHO_DOCKERFILE
```

# Comandos relacionados ao Docker Hub
#### Inicia o processo de login no Docker Hub.
```
docker login
```
#### Envia a imagem criada para o Docker Hub.
```
docker push NOME_USUARIO/NOME_IMAGEM
```
#### Baixa a imagem desejada do Docker Hub.
```
docker pull NOME_USUARIO/NOME_IMAGEM
```

# Comandos relacionados à rede
#### Mostra o ip atribuído ao container pelo docker (funciona apenas dentro do container).
```
hostname -i
```
#### Cria uma rede especificando o driver desejado.
```
docker network create --driver bridge NOME_DA_REDE
```

# Comandos relacionados ao docker-compose
#### Realiza o build dos serviços relacionados ao arquivo docker-compose.yml, assim como verifica a sua sintaxe.
```
docker-compose build
```

#### Sobe todos os containers relacionados ao docker-compose, desde que o build já tenha sido executado.
```
docker-compose up
```

#### Para todos os serviços em execução que estejam relacionados ao arquivo docker-compose.yml.
```
docker-compose down
```
