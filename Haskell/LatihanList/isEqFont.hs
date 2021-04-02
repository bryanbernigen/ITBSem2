konso :: Int -> [Int] -> [Int]
konsdot :: Int -> [Int] -> [Int]
isEmpty :: [Int] -> Bool
isOneElement :: [Char ] -> Bool


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

--pembanding 2 list         isEqFont([a],[b])
--DEFINISI DAN SPESIFIKASI
isEqFont :: [Char  ]-> [Char  ]->Bool 
{-memabndingkan 2 list yang tidak kosong. apabila potongan awal
    list 2 mengandung list 1 (dengan panjang dan urutan yang sama)
    maka akan mengembalikan True, sisianya False
    -}

--REALISASI
isEqFont li1 li2 =
    if isOneElement li1 then
        if head li1 == head li2 then True 
        else False 
    else
        if head li1 == head li2 then (isEqFont (tail li1)(tail li2))
        else False 

--APLIKASI
--isEqFont ['a','b','c'] ['a','b','c','d','e']