module UkuranBaju where

--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
ukuranBaju :: Int -> Int -> Int
    {- 
    -}

--REALISASI
ukuranBaju t bb =
    if t<= 150 then 1
    else
        if (t>150)&&(t<=170) then
            if bb<=80 
                then 2
            else 3
        else
            if (bb<=60) then 2
            else 
                if (bb>60)&&(bb<=80) then 3
                else 4

--APLIKASI
{--}