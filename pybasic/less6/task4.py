# *(вместо 3) Решить задачу 3 для ситуации, когда объём данных в файлах превышает объём ОЗУ (разумеется, не
# нужно реально создавать такие большие файлы, это просто задел на будущее проекта). Только теперь не нужно
# создавать словарь с данными. Вместо этого нужно сохранить объединенные данные в новый файл (users_hobby.txt).
# Хобби пишем через двоеточие и пробел после ФИО:
# Иванов,Иван,Иванович: скалолазание,охота
# Петров,Петр,Петрович: горные лыжи

path_users = './csv3/users.csv'
path_hobby = './csv3/hobby.csv'
path_dict = './txt4/users_hobby.txt'

dct = {}
users = []
hobby = []
with open(path_users, 'r', encoding="utf-8") as f:
    for i in f:
        i = (' '.join(i.strip().split()))
        users.append(i)

with open(path_hobby, 'r', encoding="utf-8") as f:
    for i in f:
        hobby.append(i)

for i in range(len(users)):
    dct.update({users[i]: hobby[i]})

with open(path_dict, 'w', encoding='utf-8') as f:
    for i in dct:
        f.writelines(f'{i}: {dct[i]}')
