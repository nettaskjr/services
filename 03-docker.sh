#!/bin/bash

. 01-funcoes.sh

doSeparador "Instalando docker e docker-compose..."

apps="docker.io"                # container
apps="${apps} docker-compose"   # rotinas usando docker

doApt "${apps}"

sudo usermod -aG docker ${gusr} # adicionar o usuário ao grupo do docker

