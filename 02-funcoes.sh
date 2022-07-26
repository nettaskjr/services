#!/bin/bash

. 01-var.sh

function doInstalado() {
    app=$1 # aplivativo a ser verificado se esta instalado (1) ou não (0)
    [ $(which "${app}" 2>/dev/null) ] && echo 1 || echo 0
}

function doSeparador() {
    echo ""
    echo "----------------------------"
    echo "${1}"
    echo ""
}

function doExecutar() {
    exe=$1 # script a ser executado
    ati=$2 # flag de execucao 1 executa, 0 não executa
    app=$3 # aplicativo que é usado para a execucao do script
    if [ "${ati}" -eq 1 ]; then
        [ "$(doInstalado ${app})" -eq "1" ] && echo "Executando.: ${exe} ..." && sh -c "${exe}" && doSeparador
    fi
}

function doInstalarGit() {
    end=$1 # endereco do repositorio
    ati=$2 # flag de execucao 1 executa, 0 não executa
    rep=$(basename ${end}) # nome do repositorio completo
    dir=${rep%.git} # nome da pasta
    shell=$3 # comando a ser executado
    txt=$4 # parametro opcional para enviar ao shell

    if [ ${ati} -eq 1 ]; then
        doSeparador "Baixando $rep"

        [ ! -d "${gdir}" ] && mkdir "${gdir}"
        cd "${gdir}"
        git clone "${end}"
        cd "${dir}"
        "${shell}" "${txt}" "${gusr}"
        chown "${gusr}.${gusr}" "${gdir}" -R
        cd "${ghome}"
    fi
}

function doApt {
    # DEBIAN_FRONTEND=noninteractive, neste modo, todas as perguntas no momento da instalação são respondidas com a opção padrão
    sudo apt update && sudo DEBIAN_FRONTEND=noninteractive apt -yq dist-upgrade && sudo apt install -y ${1} && sudo apt -y autoremove
}
