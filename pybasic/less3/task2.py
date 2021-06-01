# *(вместо задачи 1) Доработать предыдущую функцию в num_translate_adv(): реализовать корректную работу с числительными, начинающимися с заглавной буквы — результат тоже должен быть с заглавной. Например:
# >>> num_translate_adv("One")
# "Один"
# >>> num_translate_adv("two")
# "два"





def num_translate(number_text = None):
    my_dict = {
            'one'   : 'один',
            'two'   : 'два',
            'three' : 'три',
            'four'  : 'четыре',
            'five'  : 'пять',
            'six'   : 'шесть',
            'seven' : 'семь',
            'eight' : 'восемь',
            'nine'  : 'девять',
            'ten'   : 'десять'
    }
    if number_text == None:
        return None

    if number_text[0].isupper():
        number_text = number_text.lower()
        if number_text in my_dict:
            return my_dict[number_text].capitalize()
    else:
        return my_dict[number_text]
            
print(num_translate("Five"))
print(num_translate("five"))
print(num_translate())

