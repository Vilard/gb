# Начать работу над проектом «Склад оргтехники». Создать класс, описывающий склад. А также класс «Оргтехника», который будет базовым для классов-наследников. Эти классы — конкретные типы оргтехники (принтер, сканер, ксерокс). В базовом классе определить параметры, общие для приведённых типов. В классах-наследниках реализовать параметры, уникальные для каждого типа оргтехники.

class Warehouse:
    pass

class OfficeEquipment(Warehouse):
    def __init__(self):
        super().__init__()
        self.mains_frequency = '50gz'
        self.mains_voltage = '220v'


class Printer(OfficeEquipment):
    def __init__(self, serial_number):
        super().__init__()
        self.serial_number = serial_number

class Scanner(OfficeEquipment):
    def __init__(self, matrix_resolution):
        super().__init__()
        self.matrix_resolution = matrix_resolution


class Xerox(OfficeEquipment):
    def __init__(self, number_of_copies):
        super().__init__()
        self.number_of_copies = number_of_copies

if __name__ == '__main__':
    p1 = Printer(1992)
    print(p1.serial_number)
    s1 = Scanner('800*600dpi')
    print(s1.matrix_resolution)
    x1 = Xerox('100 in min')
    print(x1.number_of_copies, x1.mains_voltage)

    print('end')