# не сделано



# 5. Вывести на экран коды и символы таблицы ASCII, начиная с символа под номером 32 и заканчивая 
# 127-м включительно. Вывод выполнить в табличной форме: по десять пар "код-символ" в каждой строке.

obj = {i: chr(i) for i in range(32, 128)}    
count = 0
arr = []
arr2 = []
for i in obj:
    count += 1
    if count % 10 == 0:
        arr.append(arr2)
        arr2 = []
    else: arr2.append({i: obj[i]})
# print(count)
for i in arr:
    print(i)
# print(arr[0])
# print(arr2)