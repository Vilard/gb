# Реализуйте базовый класс Car:
# у класса должны быть следующие атрибуты: speed, color, name, is_police (булево). А также методы: go, stop, turn(direction), которые должны сообщать, что машина поехала, остановилась, повернула (куда);
# опишите несколько дочерних классов: TownCar, SportCar, WorkCar, PoliceCar;
# добавьте в базовый класс метод show_speed, который должен показывать текущую скорость автомобиля;
# для классов TownCar и WorkCar переопределите метод show_speed. При значении скорости свыше 60 (TownCar) и 40 (WorkCar) должно выводиться сообщение о превышении скорости.
 
# Создайте экземпляры классов, передайте значения атрибутов. Выполните доступ к атрибутам, выведите результат. Вызовите методы и покажите результат.


class Car:

    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        self.speed = 40
        print('car is go')

    def stop(self):
        self.speed = 0
        print('car is stop')

    def turn(self):
        print('car is turn')



class TownCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)
        self.over_speed()
    
    def over_speed(self):
        self.max_speed = 60
        if self.speed > self.max_speed:
            print ("привышение скорости")
        

class SportCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)


class WorkCar(TownCar):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)
        
    def over_speed(self):
        self.max_speed = 40
        if self.speed > self.max_speed:
            print( "привышение скорости")
        
class PoliceCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)


c = Car(100, 'green', 'uasja', False)
print (c.name, c.color, c.speed)

d = TownCar(70, 'red', 'ura', False)
print (d.name, d.color, d.speed)

e = WorkCar(50, 'blue', 'Alex', False)
print (e.name, e.color, e.speed)

f = PoliceCar(80, 'white-blue', 'Stanislav', True)
print(f.is_police)

g = SportCar(80, 'silver', 'Mike', False)