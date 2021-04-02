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

--hitung kelipatan 5        countMultOf5([a])

--DEFINISI DAN SPESIFIKASI
countMultOf5 :: [Int ] -> Int    
    {- menghitung banyak angka yang merupakan kelipatan 5
    dalam sebuah list
    -}

--REALISASI
countMultOf5 a=
    if isEmpty a then 0
    else 
        if mod (head a) 5==0 then 1 + countMultOf5(tail a)
        else countMultOf5(tail a)

--APLIKASI
{-countMultOf5 [1,2,3,4,5,6]
-}