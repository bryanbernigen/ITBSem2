--semua ganjil        isAllGanjil[a]

--DEFINISI DAN SPESIFIKASI
isAllGanjil :: [Int ]->Bool 
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

validator a =
    if isEmpty a then [1] 
    else
        if isOneElmt a then
            if mod (head a) 2 == 0 then []
            else [1] 
        else
            if mod (head a) 2 == 0 then []
            else validator (tail (a))

isAllGanjil a = 
    if isEmpty (validator a) then False 
    else True 

--APLIKASI