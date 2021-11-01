# 1. Определение количества различных подстрок с использованием хэш-функции. Пусть дана строка S длиной N, состоящая только из маленьких латинских букв. Требуется найти количество различных подстрок в этой строке.

d = 256
    
def search(pat, txt, q):
    M = len(pat)
    N = len(txt)
    p = 0    
    t = 0
    h = 1
  
    for i in range(M-1):
        h = (h * d)% q
  
    for i in range(M):
        p = (d * p + ord(pat[i]))% q
        t = (d * t + ord(txt[i]))% q
  
    for i in range(N-M + 1):
        if p == t:
            for j in range(M):
                if txt[i + j] != pat[j]:
                    break
  
            j+= 1
            if j == M:
                print ("Pattern found at index", str(i))
  
        if i < N-M:
            t = (d*(t-ord(txt[i])*h) + ord(txt[i + M]))% q
            if t < 0:
                t = t + q
#=================================
# inputs
txt = input("enter many symbols")
pat = input("enter your find")
#=================================
#=================================
# test str
# txt = "enter many symbols"
# pat = "m"
#=================================



q = 101
search(pat, txt, q)

# решил что пользовательский ввод будет более подходящим для тестирования,
# можно закоментировать инпуты и раскомментировать тестовые строки, реализацию с рандомными значениями не стал делать тк сложно проверять