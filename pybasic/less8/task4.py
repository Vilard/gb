# Написать декоратор с аргументом-функцией (callback), позволяющий валидировать входные значения функции и выбрасывать исключение ValueError, если что-то не так, например:
# def val_checker...
#     ...


# @val_checker(lambda x: x > 0)
# def calc_cube(x):
#    return x ** 3


# >>> a = calc_cube(5)
# 125
# >>> a = calc_cube(-5)
# Traceback (most recent call last):
#   ...
#     raise ValueError(msg)
# ValueError: wrong val -5


# Примечание: сможете ли вы замаскировать работу декоратора?
# Задачи со * предназначены для продвинутых учеников, которым мало сделать обычное задание.

from functools import wraps


def val_checker(func):
    
    def func_val(func_val):
        @wraps(func_val)
        
        def wrapper(x):
            if func(x):
                return func_val(x)
            else:
                raise ValueError(x)

        return wrapper

    return func_val


@val_checker(lambda x: x > 0)
def calc_cube(x):
    return x ** 3


n = calc_cube(-5)
print(n)
print(calc_cube.__name__)

