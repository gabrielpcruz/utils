Neste passo-a-passo, será visto como instalar o Docker no Ubuntu 64 bits. Todos os comandos listados devem ser executados no seu terminal.

Antes de mais nada, remova possíveis versões antigas do Docker:

```
sudo apt-get remove docker docker-engine docker.io
```

Depois, atualize o banco de dados de pacotes:

```
sudo apt-get update
```

Agora, adicione ao sistema a chave GPG oficial do repositório do Docker:

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

Adicione o repositório do Docker às fontes do APT:

```
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

Atualize o banco de dados de pacotes, pare ter acesso aos pacotes do Docker a partir do novo repositório adicionado:

```
sudo apt-get update
```

Por fim, instale o pacote docker-ce:

```
sudo apt-get install docker-ce
```

Caso você queira, você pode verificar se o Docker foi instalado corretamente verificando a sua versão:

```
sudo docker version
```

E para executar o Docker sem precisar de sudo, adicione o seu usuário ao grupo docker:

```
sudo usermod -aG docker $(whoami)
```

#### Das vezes que tentei executar o comando acima, deu o seguinte:
```
ubuntu@node1:~$ docker run hello-world
docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post http://%2Fvar%2Frun%2Fdocker.sock/v1.38/containers/create: dial unix /var/run/docker.sock: connect: permission denied.
See 'docker run --help'.
```

Que resolvi com os seguinte passo a passo:

1. Entre na pasta **/var/run**
```
$ cd /var/run
```

2. Liste o arquivo docker.sock com as seguintes flags:
```
$ ls -lrth docker.sock
```
3. O resultado será algo como:
```
srw-rw---- 1 root root 0 Mmm dd HH:ii docker.sock
```

4. Altere a permissao do arquivo:
```
$ sudo chmod 666 /var/run/docker.sock
```

5. Liste o arquivo docker.sock com as seguintes flags:
```
$ ls -lrth docker.sock
```
6. O resultado será algo como:
```
srw-rw-rw- 1 root root 0 Mmm dd HH:ii docker.sock
```
