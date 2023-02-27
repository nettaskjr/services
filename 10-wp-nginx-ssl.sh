#!/bin/bash

. 01-funcoes.sh
. 03-docker.sh

txt="wp-nginx-ssl"
file="arquivos/${txt}.yml"

doSeparador "Instalando ${txt}"

# atualiza as informações para geração do certificado SSL
sed -i "s/<<EMAIL>>/${geml}/g" "${file}"
sed -i "s/<<HOST>>/${gdns}/g" "${file}"

# atualiza as informações do BD (RDS)
sed -i "s/<<DB>>/${geml}/g" "${file}"
sed -i "s/<<USER_DB>>/${geml}/g" "${file}"
sed -i "s/<<PWD_DB>>/${geml}/g" "${file}"


sudo docker-compose -f "${file}" up -d
