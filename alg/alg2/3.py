pt1 = int(input())

a = list(map(int, str(pt1)))
a.reverse()
a = ''.join(map(str, a))
a = int(a)
print(a, type(a))
