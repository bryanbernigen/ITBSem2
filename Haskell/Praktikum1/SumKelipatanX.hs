module SumKelipatanX where

--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
sumKelipatanX :: Int -> Int -> Int -> Int 
    {- 
    -}

--REALISASI
sumKelipatanX m n x =
    if m == n then 
        if (mod m x) == 0 then m
        else 0
    else
        if (mod m x) == 0 then m + sumKelipatanX (m+1) n x
        else sumKelipatanX (m+1) n x

--APLIKASI
{--}