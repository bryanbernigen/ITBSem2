--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
minLembar :: Int -> Int
    {- 
    -}

--REALISASI
minLembar n =
    if n >= 100 then 1 + minLembar (n-100)
    else
        if n >= 20 then 1 + minLembar (n-20)
        else
            if n >= 10 then 1 + minLembar (n-10)
            else
                if n >= 5 then 1 + minLembar (n-5)
                else 
                    if n >= 1 then minLembar (n-1)
                    else 0

--APLIKASI
{--}