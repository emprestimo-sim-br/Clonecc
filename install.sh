#!/bin/bash

echo "Este script solicitará permissões para o Termux acessar a pasta Android."

# permissão 
termux-setup-storage

# Aceitar automaticamente a opção 'y'
echo 'y' | termux-setup-storage

# Esperar alguns segundos para garantir que as permissões foram configuradas
sleep 3

# Instalar o Python 2
pkg install python2 -y

# Instalar o Colorama
pip install colorama

# Obter o diretório atual
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Executar o script Python na mesma pasta
python2 "$DIR/hackertcp.py"
