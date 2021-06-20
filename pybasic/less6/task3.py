# Есть два файла: в одном хранятся ФИО пользователей сайта, а в другом  — данные об их хобби. Известно,
# что при хранении данных используется принцип: одна строка — один пользователь, разделитель между значениями —
# запятая. Написать код, загружающий данные из обоих файлов и формирующий из них словарь: ключи — ФИО, значения —
# данные о хобби. Сохранить словарь в файл. Проверить сохранённые данные. Если в файле, хранящем данные о хобби,
# меньше записей, чем в файле с ФИО, задаём в словаре значение None. Если наоборот — выходим из скрипта с кодом «1».
# При решении задачи считать, что объём данных в файлах во много раз меньше объема ОЗУ.
# Фрагмент файла с данными о пользователях (users.csv):
# Иванов,Иван,Иванович
# Петров,Петр,Петрович
#
# Фрагмент файла с данными о хобби  (hobby.csv):
# скалолазание,охота
# горные лыжи

path_users = './csv3/users.csv'
path_hobby = './csv3/hobby.csv'
path_dict = './csv3/dict.csv'

# with open(path_users, 'w', encoding='utf-8') as f:
#     f.writelines(f'Иванов,Иван,Иванович\nПетров,Петр,Петрович')

dct = {}
users = []
hobby = []
with open(path_users, 'r', encoding="utf-8") as f:
    lst = f.read().split('\n')
    for i in lst:
        i = ' '.join(i.split(','))
        users.append(i)


with open(path_hobby, 'r', encoding="utf-8") as f:
    lst = f.read().split('\n')
    for i in lst:
        hobby.append(i)

for i in range(len(users)):
    dct.update({users[i]: hobby[i]})

with open(path_dict, 'w', encoding='utf-8') as f:
    for i in dct:
        f.writelines(f'{i}: {dct[i]}\n')
print(dct)