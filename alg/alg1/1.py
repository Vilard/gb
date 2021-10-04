num = int(input('enter number'))

def s (num):
    return sum(map(int, str(num))) 

print(s(num))

def m (num):
    a = map(int, str(num))
    mul = 1
    for i in a:
        mul *= i 
    return mul

print (m(num))