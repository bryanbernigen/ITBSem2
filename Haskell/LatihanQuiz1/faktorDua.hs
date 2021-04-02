--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
faktorDua ::  Int -> Int
    {- 
    -}

--REALISASI
faktorDua n =
    if n == 0 then 0
    else
        if mod n 2 == 0 then 1 + faktorDua (div n 2)
        else 0

--APLIKASI
{--}