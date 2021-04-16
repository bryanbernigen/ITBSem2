berat=int(input())
if berat==-999:
    print("Data kosong")
else:
    ringan=0
    heavy=0
    jumlah=0
    total=0
    while berat!=-999:
        if 30<=berat<=200:
            jumlah+=1
            total+=berat
            if berat<=50:
                ringan+=1
            elif berat>=100:
                heavy+=1
        berat=int(input())
    if jumlah==0:
        print("Data kosong")
    else:
        rata_rata=total/jumlah
        print(jumlah)
        print(ringan)
        print(heavy)
        print(round(rata_rata))