#!/bin/bash

. 01-funcoes.sh

doSeparador "Instalando docker e docker-compose..."

# [ ]nova instalação do docker a ser testada

# remove qualquer instalação antiga do docker
# sudo apt-get remove -y docker docker-engine docker.io containerd runc

# adicinar a chave GPG oficial do Docker
# sudo mkdir -p /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# adicionar o repositorio do Docker
# echo \
#  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
#  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# corrigindo possivel erro no update
# sudo chmod a+r /etc/apt/keyrings/docker.gpg

# instalar o docker e docker compose
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose docker-compose-plugin

apps="docker.io"                # container
apps="${apps} docker-compose"   # rotinas usando docker

doApt "${apps}"

sudo usermod -aG docker ${gusr} # adicionar o usuário ao grupo do docker

# instalação do portainer

docker container run -d \
  -p 9000:9000 \
  -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer