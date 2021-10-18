# 1. В диапазоне натуральных чисел от 2 до 99 определить, сколько из них кратны каждому из чисел в 
# диапазоне от 2 до 9.
def s (end_arr):
    arr = []
    for i in range(2, end_arr+1):
        arr.append(i)
    return arr


def ss(arr1, num):
    count = 0
    for i in arr1:
        if i % num == 0:
            count += 1
    return num, count


arr1 = s(99)
arr2 = s(9)


for i in arr2:
    print(ss(arr1, i))