--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
ordRhombus :: Int -> Int
    {- 
    -}

--REALISASI
ordRhombus n =
    if n == 0 then 0
    else 
        if n==1 then 1
        else 4*(n-1) + ordRhombus (n-1)

--APLIKASI
{--}