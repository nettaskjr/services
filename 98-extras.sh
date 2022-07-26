#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

# ----          ---- #
# ---- updatedb ---- #
# ----          ---- #

doSeparador "Updatedb..."

exec="updatedb" #atualiza base do locate

    doExecutar "${exec}" "${executa}" "locate"

# ----                    ---- #
# ---- neofetch no inicio ---- #
# ----                    ---- #

doSeparador "Colocando myfetch no inicio..."

arq="/etc/profile.d/mymotd.sh"

exec="echo "neofetch" > ${arq} && chmod +x ${arq}"

    doExecutar "${exec}" "${executa}" "neofetch"    

# ----                    ---- #
# ---- script de stress   ---- #
# ----                    ---- #

doSeparador "Criando script para stress..."

file="${gdir}/stress.sh"

echo -e '#!/bin/bash\nstress --cpu 1 --timeout 300' > "${file}"
chmod +x "${file}"
chown "${gusr}.${gusr}" "${file}"

# ----                                 ---- #
# ---- atualizando data local para BR  ---- #
# ----                                 ---- #

doSeparador "Atualizando timezone..."

mv /etc/localtime /etc/localtime.old

ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime