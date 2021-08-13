# 2 Написать функцию currency_rates(), принимающую в качестве аргумента код валюты (например, USD, EUR, GBP,
# ...) и возвращающую курс этой валюты по отношению к рублю. Использовать библиотеку requests. В качестве API можно
# использовать http://www.cbr.ru/scripts/XML_daily.asp.
# Рекомендация: выполнить предварительно запрос к API в обычном
# браузере, посмотреть содержимое ответа. Можно ли, используя только методы класса str, решить поставленную задачу?
# Функция должна возвращать результат числового типа, например float.
# Подумайте: есть ли смысл для работы с денежными
# величинами использовать вместо float тип Decimal? Сильно ли усложняется код функции при этом?
# Если в качестве # аргумента передали код валюты, которого нет в ответе, вернуть None.
# Можно ли сделать работу функции не зависящей от того, в каком регистре был передан аргумент?
# В качестве примера выведите курсы доллара и евро.

import requests
from xml.dom import minidom


def currency_rates(char_code):
    def get_data(xml_url):
        return requests.get(xml_url).text

    def get_dict(xml_str):
        dom = minidom.parseString(xml_str)
        dom.normalize()
        elements = dom.getElementsByTagName("Valute")
        dct = {}
        char_code = ''
        value = ''
        for node in elements:
            for child in node.childNodes:
                if child.nodeType == 1:
                    if child.tagName == 'Value':
                        if child.firstChild.nodeType == 3:
                            value = float(child.firstChild.data.replace(',', '.'))
                    if child.tagName == 'CharCode':
                        if child.firstChild.nodeType == 3:
                            char_code = child.firstChild.data
            dct[char_code] = value

        return dct

    def get_value(dict_valute, valute):
        valute = valute.upper()
        for i in dict_valute:
            if i == valute:
                return i, dict_valute[i]

    dcts = get_dict(get_data(url))
    return get_value(dcts, char_code)



if __name__ == '__main__':
    url = "http://www.cbr.ru/scripts/XML_daily.asp"
    print(currency_rates("usd"))
