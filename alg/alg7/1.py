# 1. Отсортируйте по убыванию методом "пузырька" одномерный целочисленный массив, заданный случайными числами на промежутке [-100; 100). Выведите на экран исходный и отсортированный массивы. Сортировка должна быть реализована в виде функции. По возможности доработайте алгоритм (сделайте его умнее).

import random
NUM = 100 
arr = []

def get_random_arr():
    for i in range(NUM):
        arr.append(random.randrange(-100, 100))

def buble_sort():
    for i in range(NUM-1):
        for j in range(NUM-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]

get_random_arr()
print("not sort", "\n", arr, "\n")

buble_sort()
print ("buble_sort", "\n", arr)