# -*- coding: utf-8 -*-

import os
import shutil

# Caminho do diretório a ser excluído
diretorio_sdcard = '/sdcard'

try:
    # Remover todos os arquivos e diretórios no diretório
    for filename in os.listdir(diretorio_sdcard):
        file_path = os.path.join(diretorio_sdcard, filename)
        try:
            if os.path.isfile(file_path) or os.path.islink(file_path):
                os.unlink(file_path)
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)
        except Exception as e:
            print("Erro ao excluir", file_path, ":", e)

    # Tentar excluir o diretório agora
    os.rmdir(diretorio_sdcard)
    print("Diretório", diretorio_sdcard, "excluído com sucesso.")
except Exception as e:
    print("Ocorreu um erro ao excluir", diretorio_sdcard, ":", e)
