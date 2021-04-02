konso :: Int -> [Int] -> [Int]
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

--filter ganjil             filterGanjil([a])
--DEFINISI DAN SPESIFIKASI
filterGanjil :: [Int ]-> [Int]
{-memfilter list sehingga hanya bilangan ganjil yang mnuncul
    -} 

--REALISASI
filterGanjil li =
    if isEmpty li then []
    else
        if mod (head li) 2 == 0 then filterGanjil (tail li)
        else konso (head li) (filterGanjil (tail li))

--APLIKASI
--filterGanjil [1,2,3,4,5,6]