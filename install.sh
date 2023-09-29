#!/bin/bash

echo "Este script solicitará permissões para o Termux acessar a pasta Android."

# Permissão
termux-setup-storage

# Aceitar automaticamente a opção 'y'
echo 'y' | termux-setup-storage

# Esperar alguns segundos para garantir que as permissões foram configuradas
sleep 3

# Instalar o Python 2
pkg install python2 -y

# Obter o diretório atual
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Caminho absoluto para Python 2
PYTHON_PATH="/data/data/com.termux/files/usr/bin/python2"

# Executar o script Python na mesma pasta
if [ -x "$PYTHON_PATH" ]; then
    "$PYTHON_PATH" "$DIR/hackertcp.py"
else
    echo "Erro: Python 2 não encontrado."
fi
