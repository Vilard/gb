# 7. Напишите программу, доказывающую или проверяющую, что для множества натуральных чисел выполняется равенство: 
# 1+2+...+n = n(n+1)/2, где n - любое натуральное число.

n = 100

if sum(range (1, n+1)) == n*(n+1)/2:
    print('true', sum(range (1, n+1)), '=' ,n*(n+1)/2)
else: print('false')

