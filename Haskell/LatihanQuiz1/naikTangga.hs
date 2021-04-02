--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
naikTangga :: Int -> Int
    {- 
    -}

--REALISASI
naikTangga n =
    if n == 1 then 1
    else
        if n == 2 then 2
        else naikTangga (n-1) + naikTangga (n-2)
    
        

--APLIKASI
{--}