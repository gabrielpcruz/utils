### Este script instala as seguintes bibliotecas:
```
- Apache2
- PHP X.X
- Curl
- Composer
- MySql (client/server) 
- Workbench
- PHP Storm
- Data Grip
- Git
```
### Para rodar o script usando o bash basta: 

```
1. Criar um arquivo .sh na sua máquina com este conteúdo.
2. Alterar *X.X* para a versão do PHP desejada.
3. Rodar o script
```

### Copie e cole:
```
#!/bin/bash

sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade

sudo apt-get install software-properties-common python-software-properties curl

sudo apt-get install apache2

sudo add-apt-repository -y ppa:ondrej/php && sudo apt-get update

sudo apt install phpX.X-common phpX.X-mysql phpX.X-xml phpX.X-xmlrpc phpX.X-curl phpX.X-gd phpX.X-imagick phpX.X-cli phpX.X-dev phpX.X-imap phpX.X-mbstring phpX.X-opcache phpX.X-soap phpX.X-zip phpX.X-intl -y

sudo apt install curl

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer

sudo apt-get install mysql-server mysql-client

sudo apt install mysql-workbench

sudo snap install phpstorm --classic

sudo snap install datagrip --classic

sudo apt install git
```