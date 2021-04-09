#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 9 April 2021

#Kamus
#n,harga,total: integer

n=int(input())   #jumlah barang
total=0
for i in range(n):
    harga=int(input())
    total+=harga
print(total)