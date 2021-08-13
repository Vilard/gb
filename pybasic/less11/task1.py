# Реализовать класс «Дата», функция-конструктор которого должна принимать дату в виде строки формата «день-месяц-год». В рамках класса реализовать два метода. Первый — с декоратором @classmethod. Он должен извлекать число, месяц, год и преобразовывать их тип к типу «Число». Второй — с декоратором @staticmethod, должен проводить валидацию числа, месяца и года (например, месяц — от 1 до 12). Проверить работу полученной структуры на реальных данных.

import re


class Data:
    def __init__(self, data):
        self.data = data
        self.get_nums(self.data)
        # self.RE = re.compile('(?<!\d)(?:0?[0-9]|[12][0-9]|3[01])-(?:0?[1-9]|1[0-2])-(?:19[0-9][0-9]|20[0-9][0-9])(?!\d))'


    @classmethod
    def get_nums(self, data):
        self.data = data
        Data.isValid(self.data)
        arr = self.data.split('-')
        list_int = list(map(int, arr))
        
        return list_int

    @staticmethod
    def isValid(data):
        RE = re.compile('(?<!\d)(?:0?[0-9]|[12][0-9]|3[01])-(?:0?[1-9]|1[0-2])-(?:19[0-9][0-9]|20[0-9][0-9])(?!\d)')
        print(RE.findall(data) != [])

if __name__ == '__main__':
    data = Data("12-05-15")
    print(Data.get_nums('10-11-2018'))