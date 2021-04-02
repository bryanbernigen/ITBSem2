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

--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
getSmallest :: [Int ]->Int 
    {- 
    -}

--REALISASI
getSmallest a=
    if isOneElement a then head a
    else
        if head a< last a then getSmallest (init a)
        else getSmallest (tail a)

--APLIKASI
{--}