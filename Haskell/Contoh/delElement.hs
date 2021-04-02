--delete element        delElement(a,b)

--DEFINISI DAN SPESIFIKASI
delElement :: Int -> [Int ] -> [Int ]
    {- 
    -}
konso :: Int -> [Int ] -> [Int ]
    {- 
    -}
isEmpty :: [Int ]-> Bool 
    {- 
    -}
isOneElmt :: [Int] -> Bool
    {- 
    -}
--REALISASI

isEmpty l = null l
konso e li = [e] ++ li
isOneElmt l = (length l) == 1

delElement x a =
    if isEmpty a then []
    else 
        if isOneElmt a then
            if head a == x then (tail a)
            else a
        else 
            if head a == x then delElement x (tail a)
            else konso (head a) (delElement x (tail a))
    

--APLIKASI