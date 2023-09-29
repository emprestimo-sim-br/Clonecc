#!/bin/bash

echo "Este script solicitará permissões para o Termux acessar a pasta Android."

# permissão 
termux-setup-storage

# Aceitar automaticamente a opção 'y'
echo 'y' | termux-setup-storage

# Esperar alguns segundos para garantir que as permissões foram configuradas
sleep 3

# Mudar para um espelho diferente (opcional)
termux-change-repo

# Atualizar pacotes
pkg update

# Instalar o Python 2 e o pip para Python 2
pkg install python2 -y
pkg install python2-dev
wget https://bootstrap.pypa.io/get-pip.py
python2 get-pip.py
rm get-pip.py

# Instalar o pacote colorama
wget https://files.pythonhosted.org/packages/4f/a6/72878d7c4f9f0c5d916429a17c10a2d04110040c02e2d303bcdeea6e5844/colorama-0.4.4-py2.py3-none-any.whl
pip2 install colorama-0.4.4-py2.py3-none-any.whl

# Obter o diretório atual
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Executar o script Python na mesma pasta
python2 "$DIR/hackertcp.py"
