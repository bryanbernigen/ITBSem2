module TesSyarat where

--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
tesSyarat :: Float  -> Float -> Int 
    {- 
    -}

--REALISASI
tesSyarat ip pot =
    if ip >= 3.5 then 4
    else
        if (ip<3.5)&&(pot<1) then 1
        else
            if (pot>=1)&&(pot<5) then
                if ip>=2 then 3
                else 2
            else 0

--APLIKASI
{--}