#!/bin/bash

# limpar 
clear
echo -e "\e[1;31mExecutando instalação...\e[0m"

echo "Este script solicitará permissões para o Termux acessar a pasta Android."

# pedir permissão do storage
termux-setup-storage

# Aceitar automaticamente a opção 'y'
echo 'y' | termux-setup-storage

# Esperar alguns segundos 
sleep 3

# Instalar o Python 2
pkg install python2 -y

# Limpar a tela antes de executar o script Python
clear

# cor vermelha 
echo -e "\e[1;31mExecutando script Python...\e[0m"

# Obter o diretório atual
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# percorrer ao directorio absoluto.
PYTHON_PATH="/data/data/com.termux/files/usr/bin/python2"

# Executar o script Python 
if [ -x "$PYTHON_PATH" ]; then
    "$PYTHON_PATH" "$DIR/hackertcp.py"
else
    echo "Erro: Python 2 não encontrado."
fi
