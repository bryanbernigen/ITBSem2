--pangkat        pangkat(a,b)

--DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int 
    {- 
    -}

--REALISASI
pangkat a b=
    if b==0 then 1
    else
        if b==1 then a
        else a*(pangkat a (b-1))

--APLIKASI