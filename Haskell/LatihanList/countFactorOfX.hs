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

--banyak faktor                 countFactorOfX(a,[b])
--DEFISINI DAN SPESIFIKASI
countFactorOfX :: Int -> [Int] -> Int
{- countFactorOfX n l mengembalikan banyaknya kemunculan bilangan yang 
   merupakan faktor dari n pada l -}

--REALISASI
countFactorOfX a li =
    if isEmpty li then 0
    else
        if mod a (head li) == 0 then 1 + countFactorOfX a (tail li)
        else 0 + (countFactorOfX a (tail li))

--APLIKASI
--countFactorOfX 2 [1,2,3,4,5,6]