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

--jumlah list           sumIsiList([a])
--DEFINISI DAN SPESIFIKASI
sumIsiList :: [Int ]-> Int
{-menjumlahkan seluruh komponenyang ada di dalam list
    -} 

--REALISASI
sumIsiList li =
    if isEmpty li then 0
    else (head li) + (sumIsiList (tail li))

--APLIKASI
--sumIsiList [1,2,3,4,5,6]