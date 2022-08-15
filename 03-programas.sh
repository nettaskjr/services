#!/bin/bash

. 02-funcoes.sh

doSeparador "Instalando aplicativos..."

apps="vim"                      # vim melhorado
apps="${apps} unzip"            # compactador zip entre outros
apps="${apps} unrar-free"       # compactador RAR
apps="${apps} dirmngr"          # necessário para importar chave de assinatura do repositório
apps="${apps} locate"           # localização de arquivos
apps="${apps} neofetch"         # fetch de inicialização da distro (embelezamento)
apps="${apps} tzdata"           # configuração de timezone
apps="${apps} htop"             # um top metido a besta
apps="${apps} stress"           # script de teste de stress para o servidor
apps="${apps} curl"             # cliente URL
apps="${apps} wget"             # ferramenta de download
apps="${apps} git"              # git né!
apps="${apps} docker.io"        # container
apps="${apps} docker-compose"   # rotinas usando docker

doApt "${apps}"

sudo usermod -aG docker ${gusr} # adicionar o usuário ao grupo do docker

doSeparador "Instalando aws-cli..."

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" 
unzip /tmp/awscliv2.zip -d /tmp
sudo /tmp/aws/install 

doSeparador "Instalando terraform..."

vs="1.2.5" 
arquivo="terraform_${vs}_linux_amd64.zip" 

wget -c -P "/tmp" "https://releases.hashicorp.com/terraform/${vs}/${arquivo}" 
cd /tmp && unzip ${arquivo} 
sudo mv terraform "/usr/local/bin"

doSeparador "Instalando heroku-cli"

curl https://cli-assets.heroku.com/install.sh | sh
