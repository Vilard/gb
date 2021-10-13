# 3. В массиве случайных целых чисел поменять местами минимальный и максимальный элементы.

arr = [10, 0, 4, 8, 5, 18, 6, 3, -2]
print(arr)

max_index = arr.index(max(arr))
min_index = arr.index(min(arr))

arr[max_index], arr[min_index] = arr[min_index], arr[max_index]

print(arr)
