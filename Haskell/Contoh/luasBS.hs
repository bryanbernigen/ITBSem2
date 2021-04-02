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
{-luasBS 3
    maka akan menghasilkan nilai 6 karena
    3 + 2 + 2 + 1 + 1-}
