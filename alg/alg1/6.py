num = int(input())

alf = 'abcdefghijklmnopqrstuvwxyz'
if num <= len(alf) and num >0:
    print (alf[num-1])
else: print(f'need number 1-{len(alf)}' )
