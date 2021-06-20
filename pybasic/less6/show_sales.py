import sys

prices = sys.argv[1:]
f_name = 'task6/bakery.csv'
with open(f_name, encoding='utf-8') as f:
    if len(prices) > 1:
        s_index = int(prices[0])
        e_index = int(prices[1])
    elif len(prices) == 0:
        s_index = 0
        e_index = sum(1 for line in f)
        f.seek(0)
    else:
        s_index = int(prices[0])
        e_index = sum(1 for line in f)
        f.seek(0)

    for i, line in enumerate(f):
        if s_index <= i + 1 <= e_index:
            print(line.strip())


print(sys.argv[1])