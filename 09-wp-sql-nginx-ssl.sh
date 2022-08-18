#!/bin/bash

. 01-funcoes.sh

txt="wp-sql-nginx-ssl"
file="arquivos/${txt}.yml"

doSeparador "Instalando ${txt}"

# atualiza as informações para geração do certificado SSL
sed -i "s/<<EMAIL>>/${geml}/g" "${file}"
sed -i "s/<<HOST>>/${gdns}/g" "${file}"

sudo docker-compose -f "${file}" up -d
