#!/bin/bash

. 01-funcoes.sh

doSeparador "Instalando docker e docker-compose..."

# [ ]nova instalação do docker a testar
#sudo apt-get remove docker docker-engine docker.io containerd runc


apps="docker.io"                # container
apps="${apps} docker-compose"   # rotinas usando docker

doApt "${apps}"

sudo usermod -aG docker ${gusr} # adicionar o usuário ao grupo do docker

# instalação do portainer

docker container run -d \
  -p 9000:9000 \
  -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer