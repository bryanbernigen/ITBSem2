--delete jika        deleteIf(a,b)

--DEFINISI DAN SPESIFIKASI
deleteIf :: [Int] -> (Int -> Bool) -> [Int]
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
--FUNGSI-FUNGSI YANG BISA
isLebih5 :: Int -> Bool
-- IsLebih5(x) true jika x > 5
isBetween :: Int -> Bool
-- isBetween(x) true jika 0 <= x <= 100
isEqual10 :: Int -> Bool
-- isEqual10(x) true jika x = 10


--REALISASI
isLebih5 x = x > 5
isBetween x = x >= 0 && x <= 100
isEqual10 x = x == 10

isEmpty l = null l
konso e li = [e] ++ li
isOneElmt l = (length l) == 1

deleteIf a f = 
    if isEmpty a then []
    else
        if isOneElmt a then
            if not (f (head a)) then konso (head a) (tail a)
            else tail a
        else 
            if not (f (head a)) then konso (head a) (deleteIf (tail a) f)
            else (deleteIf (tail a) f)

--APLIKASI