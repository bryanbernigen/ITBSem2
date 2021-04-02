-- Definisi dan Spesifikasi
mergeList :: [Int] -> [Int] -> [Int]
isOneElmt :: [Int] -> Bool
	-- isOneElmt(l) true jika list of integer l hanya
	-- mempunyai satu elemen
-- Realisasi	
mergeList l1 l2
	| isOneElmt l1 && isOneElmt l2 = -- Basis
		if (head l1) <= (head l2) then
			[head l1] ++ [head l2]
		else
			[head l2] ++ [head l1]
	| (not (isOneElmt l1)) && isOneElmt l2 = -- Basis
		if (head l2) <= (head l1) then
			[head l2] ++ l1
		else
			[head l1] ++ mergeList (tail l1) l2
	| isOneElmt l1 && (not (isOneElmt l2)) = -- Basis
		if (head l1) <= (head l2) then
			[head l1] ++ l2
		else
			[head l2] ++ mergeList l1 (tail l2)
	| otherwise = -- Rekurens
		if (head l1) <= (head l2) then
			[head l1] ++ mergeList (tail l1) l2
		else
			[head l2] ++ mergeList l1 (tail l2)
isOneElmt l = length l == 1
			