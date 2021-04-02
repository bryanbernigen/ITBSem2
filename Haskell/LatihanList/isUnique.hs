konso :: Int -> [Int] -> [Int]
konsdot :: Int -> [Int] -> [Int]
isEmpty :: [Int] -> Bool
isOneElement :: [Char ] -> Bool
isUnique :: [Char ]->Bool 

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

--Prekondisi isi list minimal 1
isUnique li =
    let cek li =
            if isOneElement li then True
            else 
                if head li == head (tail li) then False 
                else cek (tail li)
    in
        if isOneElement li then True 
        else
            if cek li == True then isUnique (tail li)
            else False 