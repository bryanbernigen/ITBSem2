--pangkat       pangkat(a,b)

--DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int  -> Int 
    {-menghasilkan a pangkat b
    -}

--REALISASI
pangkat a b=
    if b==0 then 1
    else
        a*pangkat a (b-1)

--APLIKASI
{-
pangkat 2 4
16
pangkat 3 3
27
-}