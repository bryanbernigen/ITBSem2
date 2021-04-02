#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 

#Judul
# Spesifikasi
# Program GambarPita
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar pita sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 


#Kamus (Deklarasi tipe, variabel, konstanta, fungsi, prosedur)
'''
n: integer
'''
#Algoritma

def isValid(n):
# menghasilkan true jika N positif dan ganjil, false jika tidak

#Kamus Lokal

#Algoritma
    if n<0:
        return False
    elif n%2==0:
        return False
    else:
        return True

def GambarBTercermin(n):
# I.S. N > 0 dan N ganjil
# F.S. Gambar pita dengan lebar sebesar N sesuai spesifikasi soal

#Kamus Lokal

#ALGORITMA
    #atas
    i=0
    j=0
    for j in range(((n-1)//2)):
        for i in range(n):
            if (i<(j*2)):
                print(" ",end="")
            else:
                print("*",end="")
        print("")
    #tengah
    i=0
    for i in range(n):
        if i==(n-1):
            print("*",end="")
        else:
            print(" ",end="")
    print("")
    
    #Bawah
    i=0
    j=0
    for j in range(((n-1)//2)-1,-1,-1):
        for i in range(n):
            if (i<(j*2)):
                print(" ",end="")
            else:
                print("*",end="")
        print("")
            


# ALGORITMA PROGRAM UTAMA
n=int(input())
if isValid(n)==True:
    GambarBTercermin(n)
else:
    print("Masukan tidak valid") 