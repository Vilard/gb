import random

arr = []
arr2 = []
arr3 = []

for i in range(10):
	arr.append(round(random.random()*100, 2))
arr = list(map(str, arr))

for i in arr:
	arr2.append(i.split("."))

for i in arr2:
	a = [i[0].zfill(2) + " руб", i[1].zfill(2) + " коп"]
	b = ' '.join(a)
	arr3.append(b)

f_str = ", ".join(map(str, arr3))

print(f_str)