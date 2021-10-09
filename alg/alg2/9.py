first = int(input('первое число '))
second = int(input('второе число '))

f = sum(map(int, str(first)))
s = sum(map(int, str(second)))

if f > s:
    print (f, first)
elif f < s:
    print (s, second)
else: print('=')
