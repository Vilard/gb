# 1. Проанализировать скорость и сложность одного любого алгоритма, разработанных в рамках домашнего задания первых трех уроков.
# Примечание: попробуйте написать несколько реализаций алгоритма и сравнить их.

import time
arr = [10, 0, 4, 8, -60, 5, 18, 6, 3, -2]

def f1():
    min_element1 = min(arr)
    index_min_element1 = arr.index(min_element1)

    arr2 = []
    for i in arr:
        if arr.index(i) != index_min_element1:
            arr2.append(i)

    min_element2 = min(arr2)
    index_min_element2 = arr2.index(min_element2)

    print(min_element1, index_min_element1)
    print(min_element2, index_min_element2)

def f2():
    arr.sort()
    print (arr[0], arr[1])

    

def tcount (func):
    start = time.time()
    func()
    stop = time.time()
    return stop-start


if tcount(f1) > tcount(f2):
    print('второй алгоритм работает быстрее на', tcount(f1) - tcount(f2))
else:
    print('первый алгоритм работает быстрее на', tcount(f2) - tcount(f1))


# f1 сложность O(n)
# f2 сложность O(n log(n))

#  задача 7 из 3его урока. 
# В одномерном массиве целых чисел определить два наименьших элемента. Они могут быть как равны между собой (оба являться минимальными), так и различаться.

