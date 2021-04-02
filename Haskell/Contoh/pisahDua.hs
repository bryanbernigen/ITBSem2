--pisah dua        pisahDua(a)

--DEFINISI DAN SPESIFIKASI
pisahDua :: [Int ] -> Int  -> ([Int ],[Int ])
    {- 
    -}
li1 :: [Int ] -> Int  -> [Int ]
    {- 
    -}
li2 :: [Int ] -> Int  -> [Int ]
    {- 
    -}
isEmpty :: [Int ]-> Bool 
    {- 
    -}
isOneElmt :: [Int] -> Bool
    {- 
    -}
konso :: Int -> [Int ] -> [Int ]
    {- 
    -}

--REALISASI
isEmpty l = null l
isOneElmt l = (length l) == 1
konso e li = [e] ++ li
li1 a n =
    if isEmpty a then []
    else 
        if isOneElmt a then --jika 1 elemen ga bakal rekursi
            if head [a]>[n] then li1 (tail a) n
            else konso (head a) (tail a)
        else --jika masih panjang & butuh rekursi
            if head [a]>[n+1] then li1 (tail a) n
            else konso (head a) (li1 (tail a) n)
li2 a n =
    if isEmpty a then []
    else 
        if isOneElmt a then --jika 1 elemen ga bakal rekursi
            if head [a]<=[n] then li2 (tail a) n
            else konso (head a) (tail a)
        else --jika masih panjang & butuh rekursi
            if head [a]<=[n+1] then li2 (tail a) n
            else konso (head a) (li2 (tail a) n)
pisahDua a n = (li1 a n ,li2 a n ) 
--APLIKASI