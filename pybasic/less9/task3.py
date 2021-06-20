# Реализовать базовый класс Worker (работник):
# определить атрибуты: name, surname, position (должность), income (доход);
# последний атрибут должен быть защищённым и ссылаться на словарь, содержащий элементы «оклад» и «премия», например, {"wage": wage, "bonus": bonus};
# создать класс Position (должность) на базе класса Worker;
# в классе Position реализовать методы получения полного имени сотрудника (get_full_name) и дохода с учётом премии (get_total_income);
# проверить работу примера на реальных данных: создать экземпляры класса Position, передать данные, проверить значения атрибутов, вызвать методы экземпляров.

class Worker:
    def __init__(self, name, surname, position, income):
        self.name = name
        self.surname = surname
        self.position = position
        self._income = income
    

class Position(Worker):
    def get_full_name(self):
        return f'{self.name} {self.surname}'
    
    def get_total_income(self):
        return self._income['wage'] + self._income['bonus']

pupkin = Position('vasja', 'pupkin', 'enginer', {"wage": 199, "bonus": 11} )
ivanov = Position('ivan', 'ivanov', 'enginer', {"wage": 139, "bonus": 21} )

print(pupkin.get_full_name())
print(pupkin.get_total_income())
print(ivanov.get_full_name())
print(ivanov.get_total_income())
