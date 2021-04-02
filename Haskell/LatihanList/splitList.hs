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

--split list                 splitList([a])
--DEFINISI DAN SPESIFIKASI
splitList :: [Int] -> ([Int],[Int])
{- splitList li menghasilkan 2 list of integer, listpertama memuat 
    bilangan positif  dan 0 yang merupakan elemen dari li (dengan urutan 
    kemunculan yang tidak berubah),   sedangkan list kedua memuat bilangan 
    negatif elemen li. -}
{- Prekondisi: li mungkin kosong -}

--REASLISASI
splitList li =
    let pos li =
            if isEmpty li then []
            else 
                if head li >=0 then konso (head li) (pos (tail li))
                else pos (tail li)
        neg li =
            if isEmpty li then []
            else 
                if head li < 0 then konso (head li) (neg (tail li))
                else neg (tail li)
    in
        ((pos li),(neg li))

--APLIKASI
--splitList [-3,-2,-1,0,1,2,3]