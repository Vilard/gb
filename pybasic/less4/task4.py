# 4 Написать свой модуль utils и перенести в него функцию currency_rates() из
# предыдущего задания. Создать скрипт, в котором импортировать этот модуль и выполнить несколько вызовов функции
# currency_rates(). Убедиться, что ничего лишнего не происходит.
#
import task3 as utils



if __name__ == '__main__':
    print(utils.currency_rates("usd"))