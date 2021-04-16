nilai=int(input())
if nilai==-9999:
    print("Data nilai kosong")
else:
    lulus=0
    tidak=0
    jumlah=0
    total=0
    while nilai!=-9999:
        if 0<=nilai<40:
            jumlah+=1
            tidak+=1
            total+=nilai
        elif 40<=nilai<=100:
            jumlah+=1
            lulus+=1
            total+=nilai
        nilai=int(input())
    if jumlah==0:
        print(0)
    else:
        rata_rata=total/jumlah
        print(jumlah)
        print(lulus)
        print(tidak)
        print("%.2f" %rata_rata)
