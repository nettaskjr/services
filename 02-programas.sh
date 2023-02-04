#!/bin/bash

. 01-funcoes.sh

doSeparador "Instalando aplicativos..."

apps="ca-certificates"          # autoridades certificadoras para autenticação SSL
apps="${apps} curl"             # cliente URL
apps="${apps} dirmngr"          # necessário para importar chave de assinatura do repositório
apps="${apps} gnupg"            # usado para comunicação e armazenamento seguro (criptografia)
apps="${apps} htop"             # um top metido a besta
apps="${apps} locate"           # localização de arquivos
apps="${apps} lsb-release"      # identifica a distribuição Linux (/etc/os-release)
apps="${apps} neofetch"         # fetch de inicialização da distro (embelezamento)
apps="${apps} stress"           # script de teste de stress para o servidor
apps="${apps} tzdata"           # configuração de timezone
apps="${apps} unzip"            # compactador zip entre outros
apps="${apps} unrar-free"       # compactador RAR
apps="${apps} vim"              # vim melhorado
apps="${apps} wget"             # ferramenta de download

doApt "${apps}"
