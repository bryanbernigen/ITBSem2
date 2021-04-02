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

--cari maksimal        findMax([a])

--DEFINISI DAN SPESIFIKASI
findMax :: [Int ] -> Int 
    {- 
    -}

--REALISASI
findMax a=
    if isEmpty a then 0
    else
        if isOneElement a then head a
        else
            if head a > last a then findMax(init a)
            else findMax (tail a)

--APLIKASI
{--}