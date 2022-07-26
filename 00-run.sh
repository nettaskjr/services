#!/bin/bash

# ----        ---- #
# ---- TESTES ---- #
# ----        ---- #

# ---- tem internet
goo="http://www.google.com.br/intl/en_com/images/srpr/logo1w.png"
arq=$(basename "${goo}")
wget -q "${goo}" && [ -s "${arq}" ] && rm "${arq}" || { echo "Necessita de internet..."; exit 1; } 

export gmsg="${1}" # mensagem que será apresentada no prompt
export gdns="${2}" # endereco de dns que para o site ex.: example.com.br
export gusr="${3}" # usuário do /home que será utilizado para a distro (para debian o padrao é: admin )

# ----          ---- #
# ---- EXECUCAO ---- #
# ----          ---- #

./03-programas.sh

while true; do
    case "${4}" in
        --java )                ./04-java.sh; shift ;;
        --nodejs )              ./05-nodejs.sh; shift ;;
        --ionic )               ./06-ionic.sh; shift ;;
        --nginx )               ./07-nginx.sh; shift ;;
        --vault )               ./08-vault.sh; shift ;;
        --wp-nginx-mysql-ssl)   ./09-docker-wp-nginx-mysql-ssl.sh; shift;;
        * ) break ;;
    esac
done

./97-atualiza_bashrc.sh

./98-extras.sh