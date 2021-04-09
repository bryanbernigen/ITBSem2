#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 9 April 2021

#Kamus
#alas,tinggi,luas,valid: integer

valid=0
alas=float(input())
tinggi=float(input())
while alas<0 or tinggi<0:
    print("Alas dan tinggi harus > 0")
    alas=float(input())
    tinggi=float(input())
luas=0.5*alas*tinggi
print(round(luas))