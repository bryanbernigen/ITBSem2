#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 9 April 2021

#Kamus

nilai=int(input())
if nilai==-9999:
    print("Data nilai kosong")
else:
    total=nilai
    jumlah_murid=1
    lulus=0
    tidak_lulus=0
    if nilai<0:
        nilai=0
        tidak_lulus-=1
        jumlah_murid-=1
    elif nilai<40:
        tidak_lulus+=1
    elif nilai>100:
        nilai=0
        lulus-=1
        jumlah_murid-=1
    else:
        lulus+=1
    while nilai!=-9999:
        nilai=int(input())
        if nilai<0 or nilai>100:
            total=total
        elif nilai<40:
            total+=nilai
            jumlah_murid+=1
            tidak_lulus+=1
        else:
            total+=nilai
            jumlah_murid+=1
            lulus+=1
    if jumlah_murid==0:
        print(jumlah_murid)
    else:
        rata_rata=float(total)/float(jumlah_murid) 
        print(jumlah_murid)
        print(lulus)
        print(tidak_lulus)
        print("%.2f" % rata_rata)