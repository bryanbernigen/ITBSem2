module LuasBS where 
--luas bujur sangkar			luasBS(a)

--DEFINISI DAN SPESIFIKASI
luasBS::Int -> Int
    {- mencari luas bujur sangkar dengan panjang a
    -}

--REALISASI
luasBS a =
    if a==1 then 1                      --basis
    else a + (a-1) + (luasBS (a-1))     --rekurens

--APLIKASI
{--}
