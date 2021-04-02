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

--menghitung sesuai kondisi        countCond([a])

--DEFINISI DAN SPESIFIKASI
countCond :: [Int ] -> Int 
    {- menghitung banyaknya bilangan yang memenuthio kriteria:
    ganjil: habis dibagi 3 tapi tidak habis dibagi 5
    genap: bernilai antara 41-100
    sama dengan 0
    -}

--REALISASI
countCond a=
    if isEmpty a then 0
    else
        if head a == 0 then 1 + countCond(tail a)
        else
            if mod (head a) 2==0 then
                if (head a)<51||(head a)>100 then countCond(tail a)
                else 1 + countCond(tail a)
            else
                if mod (head a) 5==0 then countCond(tail a)
                else
                    if mod (head a) 3==0 then 1+countCond(tail a)
                    else countCond(tail a)

--APLIKASI
{-countCond [1,2,3,4,5,6,7,8,9]
-}