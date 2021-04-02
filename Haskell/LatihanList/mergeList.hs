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

--menggabung list               mergeList([a],[b])
--DEFINISI DAN SPESIFIKASI
mergeList:: [Int] -> [Int] -> [Int]
{- mergeList li1 li2 menghasilkan list of integer yang 
   merupakan hasil penggabungan li1 dan li2, dan tetap 
   terurut membesar. 
   Prekondisi: li1 dan li2 adalah list terurut membesar 
   dan mungkin kosong -}

--REALISASI
mergeList li1 li2 =
    if (isEmpty li1)&&(isEmpty li2) then []
    else
        if isEmpty li1 then konso (head li2) (mergeList li1 (tail li2))
        else
            if isEmpty li2 then konso (head li1) (mergeList (tail li1) (li2))
            else
                if head li1 <= head li2 then konso (head li1) (mergeList (tail li1) (li2))
                else konso (head li2) (mergeList (li1) (tail li2))

--APLIKASI
--mergeList [1,2,3] [4,5,6]