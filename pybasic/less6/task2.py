# *(вместо 1) Найти IP адрес спамера и количество отправленных им запросов по
# данным файла логов из предыдущего
# задания.
# Примечание: спамер — это клиент, отправивший больше всех запросов; код должен работать даже с файлами,
# размер которых превышает объем ОЗУ компьютера.

def get_ip_spamer():
    number_req = 0
    spam_ip = ""
    for x in lst:
        if number_req < lst.count(x):
            number_req = lst.count(x)
            spam_ip = x
    return spam_ip, number_req


lst = []

with open ("text.txt", "r") as f:
    for i in f.readlines():
        lst.append(i.split()[0][2:-2])


if __name__ == '__main__':
    print(get_ip_spamer())


