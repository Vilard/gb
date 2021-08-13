# . Написать скрипт, создающий стартер (заготовку) для проекта со следующей структурой папок:
# |--my_project
#    |--settings
#    |--mainapp
#    |--adminapp
#    |--authapp
# Примечание: подумайте о ситуации, когда некоторые папки уже есть на диске (как быть?); 
# как лучше хранить конфигурацию этого стартера, чтобы в будущем можно было менять имена папок
#  под конкретный проект; можно ли будет при этом расширять конфигурацию и хранить данные о
#  вложенных папках и файлах (добавлять детали)?


import os


def create_folder(name_dir):
    if not os.path.exists(name_dir):
        os.mkdir(name_dir)


dct = {'my_project':['settings', 'mainapp', 'adminapp', 'authapp']}


for folder in dct:
    create_folder(folder)
    if os.path.exists(folder):
        for i in dct[folder]:
            print ('qwe')
            create_folder(f'./{os.path.basename(folder)}/{i}')

