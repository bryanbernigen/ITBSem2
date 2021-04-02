--latihan 1
isJamValid j m d = 
    if (j>=0) && (j<24) && (m>=0) && (m<60) && (d>=0) && (d<60) 
        then True 
    else 
        False 

--latihan 2
jumlahDetik j m d =     
    if (j>=0) && (j<24) && (m>=0) && (m<60) && (d>=0) && (d<60) 
        then (j*3600 +m*60 +d) 
    else
        0 


--latihan 3
--asumsi tahun kabisat ada di tahun ke-4 dan kelipatannya
isDateValid d m y =
    let 
        cekfebkab = if (d>0)&&(d<=29) then True 
            else False 
        cekfeb = if (d>0)&&(d<=28) then True 
            else False
        datefeb = if mod y 4 == 0 then cekfebkab 
            else cekfeb
        cek31 = if (d>0)&&(d<=31) then True 
            else False
        cek30 = if (d>0)&&(d<=30) then True 
            else False
        cekdate = if m == 1||m==3||m==5||m==7||m==8||m==10||m==12 then cek31
            else if m==2 then datefeb
                else cek30
        cekyear = if (y>0)&&(y<=99) then True 
            else False
        cekmonth = if (m>0)&&(m<=12) then True 
            else False
    in
        if cekyear && cekmonth && cekdate == True  then True  
            else False

--Cara Lain
cekYear y = if (y>=0) && (y<=99) then True else False 
cekMonth m= if (m>0) && (m<=99) then True else False 
cekDay d m y = 
    if m == 1||m==3||m==5||m==7||m==8||m==10||m==12 then --jika bulan dengan 31 hari
        if (d>0) && (d<=31) then True else False 
    else
        if m==2 then --jika Februari
            if mod y 4 ==3 then --jika tahun kabisat 1903 dst
                if (d>0)&& (d<=29) then True else False 
            else 
                if (d>0)&& (d<=28) then True else False 
        else
            if m>12||m<0 then False --jika bulan yang ga ada di kalender
            else --jika bukan februari dan bukan bulan dengan 31 hari
                if (d>0) && (d<=30) then True else False 

isDateValid2 d m y = if cekDay d m y && cekMonth m && cekYear y == True then True else False 

--latihan 4                         nilaiTengah
nilaitengah a b c =
    if (a>b && a<c)||(a<b && a>c) then a
    else if (b>a && b<c)||(b<a && b>c) then b
        else c
    
tengah3 a b c | (a>b && a<c)||(a<b && a>c)=a 
    |(b>a && b<c)||(b<a && b>c)=b
    |(c<a && c>b)||(c<b && c>a)=c

--latihan 5
sen :: Int -> Int -> Int -> Int -> (Int , Int) 
sen q d n p = 
    let total = q*25 + d*1 + n*1 + p*5
    in
        (div total 100,mod total 100)
