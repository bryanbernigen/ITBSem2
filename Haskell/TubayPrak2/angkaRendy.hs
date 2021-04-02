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

--angkaRendy        angkaRendy([a])

--DEFINISI DAN SPESIFIKASI
angkaRendy :: [Int ] -> Int 
    {- 
    -}

--REALISASI
angkaRendy a =
    if isEmpty a then 0
    else 
        if isOneElement a then head a
        else
            angkaRendy(konso (head a + head a + head (tail a)) (tail (tail a)))

--APLIKASI
{--}