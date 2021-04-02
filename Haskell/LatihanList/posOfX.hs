konso :: Int -> [Int] -> [Int]
konsdot :: Int -> [Int] -> [Int]
isEmpty :: [Char ] -> Bool
isOneElement :: [Char ] -> Bool
posOfX :: Char ->[Char ]->Int 

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

--Prekondisi list uni(tdk ada yg double)
posOfX x li =
    let cek x li =
            if isEmpty li then False 
            else
                if isOneElement li then
                    if x == head li then True 
                    else False 
                else
                    if x == head li then True 
                    else cek x (tail li)
    in
        if cek x li == True then
            if x == head li then 1
            else 1 + (posOfX x (tail li))
        else 0