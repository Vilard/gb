# Реализовать проект «Операции с комплексными числами». Создать класс «Комплексное число». Реализовать перегрузку методов сложения и умножения комплексных чисел. Проверить работу проекта. Для этого создать экземпляры класса (комплексные числа), выполнить сложение и умножение созданных экземпляров. Проверить корректность полученного результата.


class ComplexNum:
    def __init__(self, c_num):
        self.c_num = c_num
    
    def __add__(self, other):
        return self.c_num + other.c_num
    
    def __mul__(self, other):
        return self.c_num * other.c_num
    
if __name__ == '__main__':
    c1 = ComplexNum(2 + 0j)
    c2 = ComplexNum(3 + 2j)
    print(c1 + c2)
    print(c1 * c2)
