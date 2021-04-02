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

--Fungsi        name(a,b)

--DEFINISI DAN SPESIFIKASI
sortList :: [Int ]-> [Int ] 
    {- 
    -}

--REALISASI
sortList a=
    let terkecil a=
            if isEmpty a then 0
            else
                if isOneElement a then head a
                else
                    if head a<last a then terkecil(init a)
                    else terkecil(tail a)
    in
        if isEmpty a then []
        else
            if isOneElement a then konso (head a) (tail a)
            else
                if head a== terkecil a then konso (head a) (sortList (tail a))
                else sortList(konsdot (head a) (tail a) )

--APLIKASI
{--}