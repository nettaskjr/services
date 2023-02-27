#!/bin/bash

# ----                          ---- #
# ----  INFO DO BANCO DE DADOS  ---- #
# ----        OPCIONAL          ---- #
# ----                          ---- #
while getopts ":n:e:u:p:" option; do
    # n - nome do banco de dados
    # e - endereço do banco de dados
    # u - usuário
    # p - senha
    case "${option}" in
        n ) export gndb=${OPTARG} ;;
        e ) export gedb=${OPTARG} ;;
        u ) export gudb=${OPTARG} ;;
        p ) export gpdb=${OPTARG} ;;
    esac
done

shift $(($OPTIND -1))

# ----                              ---- #
# ----    DADOS PASSADOS POR PARAM  ---- #
# ----                              ---- #
export gmsg="${1}" # mensagem que será apresentada no prompt
export gdns="${2}" # endereco de dns que para o site ex.: example.com.br
export gusr="${3}" # usuário do /home que será utilizado para a distro (para debian o padrao é: admin )
export geml="${4}" # email do usuário (ex de uso: certbot)

export ghome="/home/${gusr}"  # pasta do usuário

# ----                   ---- #
# ---- pasta de projetos ---- #
# ----                   ---- #
export gdir="${ghome}/projetos"

[ ! -d "${gdir}" ] && mkdir "${gdir}" # se não existe a pasta projetos, crie!

# # ----          ---- #
# # ---- EXECUCAO ---- #
# # ----          ---- #

# sudo ./00-run.sh my-desktop 127.0.0.1 nestor nestor.junior@gmail.com --terraform --aws-cli

./02-programas.sh

while true; do
    case "${5}" in
        --docker )              ./03-docker.sh; shift ;;
        --java )                ./04-java.sh; shift ;;
        --nodejs )              ./05-nodejs.sh; shift ;;
        --ionic )               ./06-ionic.sh; shift ;;
        --nginx )               ./07-nginx.sh; shift ;;
        --vault )               ./08-vault.sh; shift ;;
        --wp-sql-nginx-ssl )    ./09-wp-sql-nginx-ssl.sh; shift ;;
        --wp-nginx-ssl )        ./10-wp-nginx-ssl.sh; shift ;; #[ ]criar futuramente
        --desktop )             ./20-desktop.sh; shift ;; #[ ]criar futuramente
        --terraform )           ./87-terraform.sh; shift ;;
        --heroku-cli )          ./88-heroku-cli.sh; shift ;;
        --aws-cli )             ./89-aws-cli.sh; shift ;;
        * )                     break ;; #[ -f "echo arquivos/echo "${4}" | sed 's/--//g'" ] && docker-compose -f "arquivos/${4}.yml" up -d;;
    esac
done

./97-atualiza_bashrc.sh
./98-extras.sh