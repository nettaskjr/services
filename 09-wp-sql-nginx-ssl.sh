#!/bin/bash

. 02-funcoes.sh

txt="wp-sql-nginx-ssl"
echo ${txt}
file="arquivos/${txt}.yml"
echo ${file}

doSeparador "Instalando ${txt}"

# atualiza as informações para geração do certificado SSL
sed -i "s/<<EMAIL>>/${geml}/g" "${file}"
sed -i "s/<<HOST>>/${gdns}/g" "${file}"
sed -i "s/<<HOST>>/${gdns}/g" "${file}"

#sudo docker-compose -f "${file}" up -d
