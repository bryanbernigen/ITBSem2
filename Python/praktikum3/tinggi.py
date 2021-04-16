tinggi=int(input())
if tinggi==-999:
    print("Data kosong")
else:
    mhspendek=0
    mhstinggi=0
    totalmhs=0
    totaltinggi=0
    while tinggi!=-999:
        if 100<=tinggi<=300:
            totalmhs+=1
            totaltinggi+=tinggi
            if tinggi<=150:
                mhspendek+=1
            elif tinggi>=170:
                mhstinggi+=1
        tinggi=int(input())
    if totalmhs==0:
        print("Data kosong")
    else:
        rata_rata=totaltinggi/totalmhs
        print(totalmhs)
        print(mhspendek)
        print(mhstinggi)
        print(round(rata_rata))