# Подсчитать, сколько было выделено памяти под переменные в ранее разработанных программах в рамках первых трех уроков. Проанализировать результат и определить программы с наиболее эффективным использованием памяти

from memory_profiler import profile

arr = [10, 0, 4, 8, -60, 5, 18, 6, 3, -2]
@profile
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

@profile
def f2():
    arr.sort()
    print (arr[0], arr[1])

f1()    
# 15.7 mib
f2()    
# 15.7 mib

# задача 3.7 была оптимизированна в 4.1 когда сравнивали О большое, подумал сравнивать нужно подобное с подобным, задача одна и таже реализация разная, но результат несколько удивил, по памяти выходит одно и то же.
# версия питона 3.9.0
# Linux localhost 4.4.192-perf+ #1 SMP PREEMPT Sun Jul 11 20:14:17 WIB 2021 aarch64 Android
# исполнял код процессор телефона под управлением 64 ос
# Linux vladimir-Satellite-A200 4.8.0-53-generic #56~16.04.1-Ubuntu SMP Tue May 16 01:14:44 UTC 2017 i686 i686 i686 GNU/Linux
# в качестве клавиатуры использовался ноут под управлением 32 разрядной ос если это важно)