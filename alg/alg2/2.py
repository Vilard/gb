# 2. Посчитать четные и нечетные цифры введенного натурального числа. 
# Например, если введено число 34560, то у него 3 четные цифры (4, 6 и 0) и 2 нечетные (3 и 5).

pt1 = int(input())

a = list(map(int, str(pt1)))
count1 = 0
count2 = 0
for i in a:
    if i % 2 == 0:
        count1 += 1
    else : count2 += 1


print(count1, count2)
