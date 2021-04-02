-- DEFINISI DAN SPESIFIKASI FUNGSI
ubahArah :: Int -> Int -> Int
{- ubahArah s r adalah fungsi yang menerima masukan dua buah integer s dan r yang
merepresentasikan arah pergerakan dan besar perubahan arah yang akan dilakukan (dalam satu derajat).
Fungsi mengembalikan arah pergerakan yang baru dalam range 0 s.d. 359, setelah s diputar sebesar r. -}

--REALISASI
ubahArah s r=
    if s+r<0 then 360 +(s+r)
    else
        if s+r>360 then s+r-360
        else s+r

--APLIKASI
--ubahArah 1 1
--2
--ubahArah 1 2
--3