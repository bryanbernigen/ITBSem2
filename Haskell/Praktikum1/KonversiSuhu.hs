module KonversiSuhu where

--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float  -> Char -> Float 
    {- 
    -}

--REALISASI
konversiSuhu a b =
    if b=='R' then (4/5*a)
    else
        if b=='K' then (a+273.15)
        else (9/5*a)+32
--APLIKASI
{--}