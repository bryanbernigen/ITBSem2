#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 

#Judul
# Spesifikasi 


#Kamus (Deklarasi tipe, variabel, konstanta, fungsi, prosedur)
'''
r1,r2,r3,valid,rtotal: int
s: char
'''
#Algoritma
valid=0
rtotal=0
while (valid==0):
    r1=float(input())
    r2=float(input())
    r3=float(input())
    s=input()
    if r1<=0 or r2<=0 or r3<=0:
        print("Masukan salah")
    elif s=='s' or s=='S':
        rtotal=r1+r2+r3
        print("%.2f"%rtotal)
        valid=1
    elif s=='p' or s=="P":
        rtotal=1/((1/r1)+(1/r2)+(1/r3))
        print("%.2f"%rtotal)
        valid=1
    else:
        print("Masukan salah")