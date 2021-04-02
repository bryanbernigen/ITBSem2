konso :: Char  -> [Char ] -> [Char ]
konsdot :: Int -> [Int] -> [Int]
isEmpty :: [Char ] -> Bool
isOneElement :: [Char ] -> Bool
splitAlternate :: [Char ]->([Char ],[Char ])


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

splitAlternate li =
    let gan li =
            if isEmpty li then []
            else
                if isOneElement li then konso (head li) (tail li)
                else konso (head li) (gan (tail (tail li)))
        gen li =
            if isEmpty li||isOneElement li then []
            else
                konso (head (tail li)) (gen (tail (tail li)))
        
    in
        ((gan li),(gen li))