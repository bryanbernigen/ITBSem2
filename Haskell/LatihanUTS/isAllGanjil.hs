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

--Fungsi        name([a])

--DEFINISI DAN SPESIFIKASI
isAllGanjil :: [Int ] -> Bool 
    {- 
    -}

--REALISASI
isAllGanjil a=
    if isEmpty a then True 
    else
        if isOneElement a then
            if mod (head a) 2 == 0 then False 
            else True 
        else
            if mod (head a) 2 == 0 then False 
            else isAllGanjil(tail a)

--APLIKASI
{--}