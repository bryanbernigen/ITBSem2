-- Definisi dan Spesifikasi
sumIsiList :: [Int] -> [Int]
isOneElmt :: [Int] -> Bool
	-- isOneElmt(l) true jika list of integer l hanya
	-- mempunyai satu elemen 
-- Realisasi
sumIsiList l
	| isOneElmt l = head l -- Basis
	| otherwise = (head l) + (sumIsiList (tail l)) -- Rekurens
isOneElmt l = length l == 1
