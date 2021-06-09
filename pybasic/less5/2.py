# 2. * (вместо 1) Решить задачу генерации нечётных чисел от 1 до n (включительно), не используя ключевое слово yield.

def odd_nums(n):
        return (num for num in range(1, n+1, 2))


if __name__ == "__main__":
    f = odd_nums(15)
    print(type(f))
    print(next(f))
    print(next(f))
    print(next(f))
    print(next(f))