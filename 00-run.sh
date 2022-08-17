#!/bin/bash

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
        --wp-sql-nginx-ssl)     ./09-wp-sql-nginx-ssl; shift ;;
        * )                     break ;; #[ -f "echo arquivos/echo "${4}" | sed 's/--//g'" ] && docker-compose -f "arquivos/${4}.yml" up -d;;
    esac
done

./97-atualiza_bashrc.sh
./98-extras.sh
