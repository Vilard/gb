def isnumber(str):
	try:
		a = int(str)
		return True
	except:
		return False

arr = ['в', '5', 'часов', '17', 'минут', 
'температура', 'воздуха', 'была', '+5', 'градусов']
arr2 = []
a = '"'
for i in arr:
	if isnumber(i):
		if i[:1] != '+':
			arr2.extend([a, i.zfill(2), a])
		else:
			print("+" + str(int(i)).zfill(2))
			arr2.extend([a ,"+" + str(int(i)).zfill(2), a])
	else:
		arr2.append(i)
# итерпояция срок не работает старая версия python 3.5.2 (f'{1+1}')
# нужна 64 разрндная ОС для того чтобы поставить версию 3.6
# или настраивать удаленное соединения на андройд

f = ''
for i in arr2:
	# f +=   f'c/ {i}'

# print(i)
# print(f)
print(f"{1}")
# print(str(arr2))
	



# print(isnumber(arr[2]))
# print (int(arr[8].isnumber()))