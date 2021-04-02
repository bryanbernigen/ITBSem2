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

---------------------------------------------------------
--FUNGSI 1
--ispositif        isPos([a])

--DEFINISI DAN SPESIFIKASI
isPos :: [Int ]->[Int ]
    {- mengembalikan semua isi list yang positif
    -}

--REALISASI
isPos a =
    if isEmpty a then []
    else
        if head a >0 then konso (head a) (isPos (tail a))
        else isPos (tail a)

--APLIKASI
{--}


-------------------------------------------------------------
--FUNGSI 2
--isnegatif        isNeg([a])

--DEFINISI DAN SPESIFIKASI
isNeg :: [Int ]->[Int ]
    {- mengembalikan semua isi list yang positif
    -}

--REALISASI
isNeg a =
    if isEmpty a then []
    else
        if head a<0 then konso (head a) (isNeg (tail a))
        else isNeg (tail a)

--APLIKASI
{--}


--------------------------------------------------------
--FUNGSI 3
--iskabisat        isKabisat([a])

--DEFINISI DAN SPESIFIKASI
isKabisat :: [Int ]->[Int ]
    {- mengembalikan semua isi list yang positif
    -}

--REALISASI
isKabisat a =
    if isEmpty a then []
    else
        if mod (head a) 400 ==0 then konso(head a)(isKabisat(tail a))
        else
            if mod (head a) 100 ==0 then isKabisat(tail a)
            else
                if mod (head a) 4 ==0 then konso (head a)(isKabisat(tail a))
                else isKabisat(tail a)

--APLIKASI
{--}



-----------------------------------------------------------------------
--FUNGSI TOTAL
--filterlist        filterList([a],b)

--DEFINISI DAN SPESIFIKASI
filterList :: [Int ] -> ([Int ]->[Int ]) -> [Int ]
    {- 
    -}

--REALISASI
filterList a f= f(a)

--APLIKASI
{-
filterList [-1,-2,-3,4,5,6,7,8,9] isPos 
[4,5,6,7,8,9]

filterList [-1,-2,-3,4,5,6,7,8,9] isNeg
[-1,-2,-3]

filterList [1,2,3,4,5,6,7,8,9] isKabisat
[4,8]
-}