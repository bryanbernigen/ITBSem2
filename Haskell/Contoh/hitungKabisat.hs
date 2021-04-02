--validasi tahun kabisat        isKabisat(a)
--banyaknya tahun kabisat       hitungKabisat()

--DEFINISI DAN SPESIFIKASI
isKabisat :: Int -> Bool 
    {- memvalidasi apakah tahin tersebut kabisat atau bukan
    -}
hitungKabisat :: Int -> Int -> Int 
    {- menghitung jumlah tahun kabisat
    -}

--REALISASI
isKabisat a
    |mod a 400 == 0 = True 
    |(mod a 4 == 0)&&(mod a 100 /= 0) = True 
    |otherwise = False 

hitungKabisat a b =
    if (a<b) then 0
    else
        if a == b then 
            if isKabisat a == True then 1
            else 0
        else 
            if isKabisat a == True then 1 + hitungKabisat (a+1) b
            else 0 + hitungKabisat (a+1) b


--APLIKASI