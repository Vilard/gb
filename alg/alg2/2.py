pt1 = int(input())

a = list(map(int, str(pt1)))
count1 = 0
count2 = 0
for i in a:
    if i % 2 == 0:
        count1 += 1
    else : count2 += 1


print(count1, count2)
