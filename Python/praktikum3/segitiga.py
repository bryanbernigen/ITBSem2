#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 9 April 2021

#Kamus
#alas,tinggi,luas,valid: integer

alas, tinggi=map(int, input().split())
if alas<=0 or tinggi<=0:
    print("Alas dan tinggi harus > 0")
else:
    luas=0.5*alas*tinggi
    print(round(luas))