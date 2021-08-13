# Реализовать класс Stationery (канцелярская принадлежность):
# определить в нём атрибут title (название) и метод draw (отрисовка). Метод выводит сообщение «Запуск отрисовки»;
# создать три дочерних класса Pen (ручка), Pencil (карандаш), Handle (маркер);
# в каждом классе реализовать переопределение метода draw. Для каждого класса метод должен выводить уникальное сообщение;
# создать экземпляры классов и проверить, что выведет описанный метод для каждого экземпляра.

class Stationery:
    def __init__(self):
        self.title = "title"

    def draw(self):
        print(f'запуск отрисовки {self.title}')

class Pen(Stationery):
    def __init__(self):
        super().__init__()
        self.title = 'pen'


class Pencil(Stationery):
    def __init__(self):
        super().__init__()
        self.title = 'Pencil'

class Handle(Stationery):
    def __init__(self):
        super().__init__()
        self.title = 'Handle'


s = Stationery()
p = Pen()
p2 = Pencil()
h = Handle()
p.draw()
s.draw()
h.draw()
p2.draw()