--sort list        sortList(a)

--DEFINISI DAN SPESIFIKASI
sortList :: [Int]  -> [Int] 
    {- 
    -}
getSmallest :: [Int]  -> [Int] 
    {- 
    -}
konso :: Int -> [Int ] -> [Int ]
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
konso e li = [e] ++ li
konsdot e li = li ++ [e]
isEmpty l = null l
isOneElmt l = (length l) == 1

getSmallest a =
    if isOneElmt a then
        head [a]
    else
        if (head a < head (tail a)) then getSmallest(konsdot (head a)(tail a))
        else (getSmallest (tail a))

sortList a=
    if isEmpty a then []
    else
        if isOneElmt a then konso (head a) (tail a)
        else 
            if head a == head(getSmallest a) then konso (head a) (sortList (tail a))
            else sortList(konsdot (head a) (tail a))

--APLIKASI