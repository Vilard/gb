# Не используя библиотеки для парсинга, распарсить (получить определённые данные) файл логов web-сервера
# nginx_logs.txt
# (https://github.com/elastic/examples/raw/master/Common%20Data%20Formats/nginx_logs/nginx_logs) —
# получить список кортежей вида: (<remote_addr>, <request_type>, <requested_resource>). Например:
# [
#     ...
#     ('141.138.90.60', 'GET', '/downloads/product_2'),
#     ('141.138.90.60', 'GET', '/downloads/product_2'),
#     ('173.255.199.22', 'GET', '/downloads/product_2'),
#     ...
# ]
import requests as req

url = 'https://raw.githubusercontent.com/elastic/examples/master/Common%20Data%20Formats/nginx_logs/nginx_logs'

text = req.get(url).text.split('\n')

try:
    with open("text.txt", "w") as f:
        for i in range(len(text)):
            str_line = f"('{text[i].split()[0]}', '{text[i].split()[5][1:]}', '{text[i].split()[6]}')\n"
            f.writelines(str_line)
except:
    pass



# **(вместо 4) Решить задачу 4 и реализовать интерфейс командной строки, чтобы можно было задать имя обоих
# исходных файлов и имя выходного файла. Проверить работу скрипта.
#
#
# *(вместо 6) Добавить возможность редактирования данных при помощи отдельного скрипта: передаём ему
# номер записи и новое значение. При этом файл не должен читаться целиком — обязательное требование.
# Предусмотреть ситуацию, когда пользователь вводит номер записи, которой не существует.
# Задачи со * предназначены для продвинутых учеников, которым мало сделать обычное задание.
