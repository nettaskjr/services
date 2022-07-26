#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

if [ "${executa}" -eq 1 ]; then
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
fi
