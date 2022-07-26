#/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

if [ "${executa}" -eq 1 ]; then
    doSeparador "Configurando bashrc.."

    fil="$(pwd)/arquivos/bashrc"
    arq="${ghome}/.bashrc"
    arr="/root/.bashrc"
    per="644"

    # copia para pasta home
    cp "${fil}" "${arq}" && chown "${gusr}.${gusr}" "${arq}" && chmod "${per}" "${arq}"
    sed -i "s/<<TXT>>/${gmsg}/g" "${arq}"

    # copia para pasta root
    cp "${fil}" "${arr}"
    sed -i "s/<<TXT>>/${gmsg}/g" "${arr}"

    # reload ns arquivos de configuracao
    source "${arq}"
    source "${arr}"
fi