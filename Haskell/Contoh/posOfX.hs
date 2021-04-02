-- Definisi dan Spesifikasi
posOfX :: Char -> [Char] -> Int
isEmpty :: [Char] -> Bool
	-- isEmpty(l) true jika list of elemen l kosong
isMember :: Char -> [Char] -> Bool
	-- isMember(x,l) true jika x adalah elemen list l
-- Realisasi
posOfX e lc
	| isEmpty lc = 0 -- Basis
	| otherwise = -- Rekurens
		if (last lc) == e then
			(length lc)
		else
			posOfX e (init lc)
isEmpty l = null l
isMember x l =
	if (isEmpty l) then False -- Basis
	else if (head l) == x then True
	else (isMember x (tail l)) -- Rekurens