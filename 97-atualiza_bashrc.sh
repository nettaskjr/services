#/bin/bash

. 01-funcoes.sh

doSeparador "Configurando bashrc.."

fil="$(pwd)/arquivos/bashrc"
arq="${ghome}/.bashrc"
arr="/root/.bashrc"
per="644"

# copia para pasta home
cp "${fil}" "${arq}" && chown "${gusr}.${gusr}" "${arq}" && chmod "${per}" "${arq}"
sed -i "s/<<TXT>>/${gmsg}/g" "${arq}"

# copia para pasta root
sudo cp "${fil}" "${arr}"
sudo sed -i "s/<<TXT>>/${gmsg}/g" "${arr}"

# reload ns arquivos de configuracao
source "${arq}"
