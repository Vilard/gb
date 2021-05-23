duration = int(input('введите количество секунд: '))
# duration = 1234890

res = 0
arr = ['год', 'месяц', 'день', 'час', 'мин', 'сек']
tup = (31536000, 2628000, 86400, 3600, 60)
res_arr = []

for i in range(len(tup)):
	if (duration >= i):
		if (duration//tup[i] != 0):
			res_arr.append(str(duration//tup[i]))
			res_arr.append(arr[i])
			duration = duration%tup[i]

res_arr.append(str(duration))
res_arr.append(arr[-1])	

str_duration = " ".join(res_arr)
print (str_duration)
