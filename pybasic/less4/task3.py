# 3 *(вместо 2)
# Доработать функцию currency_rates(): теперь она должна возвращать кроме курса дату,
# которая передаётся в ответе сервера. Дата должна быть в виде объекта date.
# Подумайте, как извлечь дату из ответа, какой тип данных лучше использовать в ответе функции?
#

import requests
from xml.dom import minidom


def currency_rates(char_code):

    def get_data(xml_url):
        return requests.get(xml_url).text

    def get_dict(xml_str):
        dom = minidom.parseString(xml_str)
        dom.normalize()
        data = dom.getElementsByTagName("ValCurs")
        data_attr = {}

        for i in data:
            if i.getAttribute("Date"):
                data_attr["Date"] = i.getAttribute("Date")

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

        return [dct, data_attr]

    def get_value(dict_valute, valute):
        valute = valute.upper()
        for i in dict_valute:
            if i == valute:
                return i, dict_valute[i]

    url = "http://www.cbr.ru/scripts/XML_daily.asp"
    dcts = get_dict(get_data(url))

    return get_value(dcts[0], char_code), dcts[1]


if __name__ == '__main__':
    url = "http://www.cbr.ru/scripts/XML_daily.asp"
    print(currency_rates("usd"))
