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

--apakah list urutan??          isOrdered([a])
--DEFINISI DAN SPESIFIKASI
isOrdered :: [Int] -> Bool
{- isOrdered l menghasilkan true jika elemen-elemen pada l terurut membesar,
    false jika tidak. Prekondisi: l tidak kosong -}

--REALISASI
isOrdered li =
    if isOneElement li then True 
    else
        if head li <= head (tail li) then isOrdered (tail li)
        else False  

--APLIKASI
--isOrdered [1,2,3,4,5,6]