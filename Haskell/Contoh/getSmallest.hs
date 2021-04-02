--terkecill        getSmallest[a]

--DEFINISI DAN SPESIFIKASI
getSmallest :: [Int ] -> [Int] 
    {- 
    -}
konsdot :: Int -> [Int ] -> [Int ]
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
konsdot e li = li ++ [e]
isOneElmt l = (length l) == 1

getSmallest a =
    if isOneElmt a then
        head [a]
    else
        if (head a < head (tail a)) then getSmallest(konsdot (head a)(tail a))
        else (getSmallest (tail a))

--APLIKASI