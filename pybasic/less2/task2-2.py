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
        
f_str2 = ''
count = 0

for i in arr2:
    if i == a:
        count += 1
        if count % 2 == 0:
            if i == a:
                f_str2 += f'{i} '
        else: 
            f_str2 += f'{i}'
    elif isnumber(i):
        f_str2 += f'{i}'
    else:
        f_str2 += f'{i} '

print("решение 2")
print(f_str2)


# 3я задача
f_str3 = ''
count = 0

for i in arr2:
    if isnumber(i):
	    f_str3 += f'{i}'
    elif i == a:
        count += 1
        if count % 2 == 1:
            f_str3 += f'{i}'
        else: 
            f_str3 += f'{i} '
    else:
        f_str3 += f'{i} '
        
print("решение 3")
print(f_str3)

