# 7. В одномерном массиве целых чисел определить два наименьших элемента. Они могут быть как равны между собой (оба являться минимальными), так и различаться.


arr = [10, 0, 4, 8, -60, 5, 18, 6, 3, -2]
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
