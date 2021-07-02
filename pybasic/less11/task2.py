# Создать собственный класс-исключение, обрабатывающий ситуацию деления на ноль. Проверить его работу на данных, вводимых пользователем. При вводе нуля в качестве делителя программа должна корректно обработать эту ситуацию и не завершиться с ошибкой.

class Er:
    def __init__(self, num):
        self.num = int(num)

    def division(self):
        print(self.num)
        try:
            print(20 / self.num)
        except ZeroDivisionError:
            print("err")


if __name__ == '__main__':
    while(True):
        e = Er(input('enter number: '))
        e.division()