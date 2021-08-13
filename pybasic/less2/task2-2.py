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
			arr2.extend([a ,"+" + str(int(i)).zfill(2), a])
	else:
		arr2.append(i)



f = ''
for i in arr2:
	if i == '"':
		f += i
		print(i)

print (i)

# print(list(map(' ', arr2)))
	# print(dir(map))



# print(isnumber(arr[2]))
# print (int(arr[8].isnumber()))