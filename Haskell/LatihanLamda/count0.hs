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

--menghitung 0        count0([a])

--DEFINISI DAN SPESIFIKASI
count0 :: [Int ] -> Int 
    {- menghitung banyaknya nilai 0
    -}

--REALISASI
count0 a=
    if isEmpty a then 0
    else 
        if head a == 0 then 1 + count0(tail a)
        else count0(tail a)
--APLIKASI
{-count0 [0,1,2,3,4,5,6]
-}