konso :: Char  -> [Char ] -> [Char ]
konsdot :: Int -> [Int] -> [Int]
isEmpty :: [Int] -> Bool
isOneElement :: [Int] -> Bool


--KONSTRUKTOR
konso a li = [a] ++ li
konsdot a li = li ++ [a]
--SELEKTOR
{-
head - elemen
tail - list
last - elemen
init - list
-}
--PREDIKAT DASAR
isEmpty li = null li
isOneElement li = (length li) == 1

--hapus elemen ke n         delNthElmt(a,[b])
--DEFINISI DAN SPESIFIKASI
delNthElmt :: Int -> [Char] -> [Char] 
{- delNthElmt n l menghilangkan elemen ke-n dari l. 
   Asumsi: n lebih kecil atau sama dengan jumlah elemen l; l tidak kosong -}

--REALISASI
delNthElmt a li =
    if a>1 then konso (head li) (delNthElmt (a-1) (tail li) )
    else tail li

--APLIKASI
--delNthElmt 2 [1,2,3,4,5,6]