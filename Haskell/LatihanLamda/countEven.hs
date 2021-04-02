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

--menghitung genap        countEven([a])

--DEFINISI DAN SPESIFIKASI
countEven :: [Int ] -> Int 
    {- menhitung jumlah genap dalam list
    -}

--REALISASI
countEven a =
    if isEmpty a then 0
    else
        (if mod (head a) 2==0 then 1 else 0)+ countEven (tail a)

--APLIKASI
{-countEven [1,2,3,4,5,6]
-}
