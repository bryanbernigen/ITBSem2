n=int(input())
while not 0<n<=100:
    print("Masukan salah. Ulangi!")
    n=int(input())

array_of_char=[]
upper=False
lower=False
symbol=False
for i in range(n):
    char=input()
    array_of_char.append(char)
    if 97<=ord(char)<=122:
        lower=True
    elif 65<=ord(char)<=90:
        upper=True
    else:
        symbol=True

cc=input()
if cc=='l' or cc=='L':
    if not upper:
        print("Tidak ada huruf besar")
    else:
        for i in range(n):
            if 65<=ord(array_of_char[i])<=90:
                print(i+1,array_of_char[i])
                break
elif cc=='s' or cc=='S':
    if not lower:
        print("Tidak ada huruf kecil")
    else:
        for i in range(n):
            if 97<=ord(array_of_char[i])<=122:
                print(i+1,array_of_char[i])
                break
elif cc=='x' or cc=='X':
    if not symbol:
        print("Semua huruf")
    else:
        for i in range(n):
            if not 65<=ord(array_of_char[i])<=90 and not 97<=ord(array_of_char[i])<=122:
                print(i+1,array_of_char[i])
                break
else:
    print("Tidak diproses")
    
    

