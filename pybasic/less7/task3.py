# 3. Создать структуру файлов и папок, 
# как написано в задании 2 (при помощи 
# скрипта или «руками» в проводнике). 
# Написать скрипт, который собирает все 
# шаблоны в одну папку templates, например:
# |--my_project
#    ...
#   |--templates
#    |   |--mainapp
#    |   |  |--base.html
#    |   |  |--index.html
#    |   |--authapp
#    |      |--base.html
#    |      |--index.html
# Примечание: исходные файлы необходимо 
# оставить; обратите внимание, что 
# html-файлы расположены в родительских 
# папках (они играют роль пространств имён); 
# предусмотреть возможные исключительные 
# ситуации; это реальная задача, которая 
# решена, например, во фреймворке django.

import os
import shutil


root_folder = 'task3'
c_folder = f'{root_folder}/my_project'
# p_folder = f'{root_folder}/my_project/'
files = []
if not os.path.exists(root_folder):
    os.mkdir(root_folder)

for r,d,f in os.walk(c_folder):
    for file in f:
        if '.html' in file:
            files.append(os.path.join(r, file))


for path in files:
    t_dirname = os.path.dirname(path).split('/')[-1]
    t_folder = f'{os.path.dirname(path)}/templates'
    folder = f'{t_folder}/{t_dirname}'
    if not os.path.exists(t_folder):
            os.mkdir(t_folder)
    if not os.path.exists(folder):
            os.mkdir(folder)
    
    shutil.copy(path, folder)
