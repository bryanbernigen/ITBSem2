#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 9 April 2021

#Kamus


n=0
n_true=0
upper=['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
lower=['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
gabungan=['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z','A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

while n_true==0:
    n=int(input())
    if n<=0 or n>100:
        print("Masukan salah. Ulangi!")
    else:
        n_true=1
list_dummy=[]
for i in range(n):
    karakter=input()
    list_dummy.append(karakter)
pilihan=input()
ketemu=0
if pilihan=='L'or pilihan=='l':
    for i in range(n):
        for ii in range(26):
            if list_dummy[i]==upper[ii]:
                print(i+1,list_dummy[i])

                exit()
    print("Tidak ada huruf besar")
elif pilihan=='S'or pilihan=='s':
    for i in range(n):
        for ii in range(26):
            if list_dummy[i]==upper[ii]:
                print(i+1,list_dummy[i])
                exit()
    print("Tidak ada huruf kecil")
elif pilihan=='X'or pilihan=='x':
    for i in range(n):
        for ii in range(52):
            if list_dummy[i]==gabungan[ii]:
                ketemu=1
        if ketemu==1:
            ketemu=0
        else:
            print(i+1,list_dummy[i])
            exit()
    print("Semua huruf")
else:
    print("Tidak diproses")






    