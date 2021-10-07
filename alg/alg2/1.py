import sys
# while put2 !=0:
 
#    put1 = int(input())
#    put2 = str(input()) 
#    put3 = int(input())
def calc(put1, put2, put3):    
    if put2 == '+':
        return put1.__add__(put3)
    elif put2 == '-':
        return put1.__sub__(put3)
    elif put2 == '*':
        return put1.__mul__(put3)
    else:
        return put1.__truediv__(put3)
#    else: print('need enter + - / * or 0')
def f(pt1, pt2, pt3):
    pt1, pt2, pt3 = int(input()),str(input('s')),int(input())

    if pt2 == 0:
        print('end')
        sys.exit()
    else: return f(pt1, pt2, pt3)
pt1, pt2, pt3 = int(input()),str(input('s')),int(input())

f(pt1, pt2, pt3 )

print(calc(1, '+', 2))
print(calc(1, '-', 2))
print(calc(1, '*', 2))
print(calc(1, '/', 2))


