#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 

#Judul
# Spesifikasi 


#Kamus (Deklarasi tipe, variabel, konstanta, fungsi, prosedur)
'''

'''
#Algoritma

n=int(input())
char1=input()
char2=input()
i=0
j=0

if n<=0:
    print("Masukan tidak valid")
elif char1==char2:
    print("Masukan tidak valid")

for j in range(n):
    for i in range(n):
        if j==0 or j==(n-1):
            print(char1,end='')
        elif i==0 or i==(n-1):
            print(char1,end='')
        else:
            print(char2,end='')
    print('')

