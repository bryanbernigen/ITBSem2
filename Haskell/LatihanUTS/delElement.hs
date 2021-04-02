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
delElement :: Int -> [Int ] -> [Int ]
    {- 
    -}

--REALISASI
delElement n a=
    if isEmpty a then []
    else
        if isOneElement a then
            if head a == n then []
            else konso (head a) (tail a)
        else
            if head a==n then delElement n (tail a)
            else konso (head a) (delElement n (tail a))
                
--APLIKASI
{--}