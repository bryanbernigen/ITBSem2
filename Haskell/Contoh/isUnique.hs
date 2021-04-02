-- Definisi dan Spesifikasi
isUnique :: [Int] -> Bool
isEmpty :: [Int] -> Bool
	-- isEmpty(l) true jika list of elemen l kosong
isOneElmt :: [Int] -> Bool
	-- isOneElmt(l) true jika list of integer l hanya
	-- mempunyai satu elemen 
isMember :: Int -> [Int] -> Bool
	-- isMember(x,l) true jika x adalah elemen list l
-- Realisasi
isUnique l
	| isOneElmt l = True -- Basis
	| otherwise = -- Rekurens
		if isMember (head l) (tail l) then
			False
		else
			isUnique (tail l)
isEmpty l = null l
isOneElmt l = length l == 1
isMember x l =
	if (isEmpty l) then False -- Basis
	else if (head l) == x then True
	else (isMember x (tail l)) -- Rekurens
