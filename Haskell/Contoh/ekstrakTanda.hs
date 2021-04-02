--Ekstrak Tanda        ekstrakTanda(a)

--DEFINISI DAN SPESIFIKASI
ekstrakTanda :: [Int ] -> [Int ]
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
ekstrakTanda a =
    if isEmpty a then []
    else 
        if isOneElmt a then --jika 1 elemen ga bakal rekursi
            if head [a]<[0] then konso (-1) (tail a)
            else
                if head [a]==[0] then konso (0) (tail a)
                else konso (1) (tail a)
        else --jika masih panjang
            if head [a]<[0] then konso (-1) (ekstrakTanda (tail a))
            else
                if head [a]>[1] then konso (1) (ekstrakTanda (tail a))
                else konso (0) (ekstrakTanda(tail a))


--APLIKASI