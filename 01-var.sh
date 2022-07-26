#!/bin/bash

export ghome="/home/${gusr}"
export gdir="${ghome}/projetos"

# ----                   ---- #
# ---- pasta de projetos ---- #
# ----                   ---- #
[ ! -d "${gdir}" ] && mkdir "${gdir}" # se não existe a pasta projetos, crie