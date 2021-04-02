-- Definisi dan Spesifikasi
splitAlternate :: [Char] -> ([Char],[Char])
splitAlternateOdd :: Int -> [Char] -> [Char]
splitAlternateEven :: Int -> [Char] -> [Char]
konsDot :: [Char] -> Char -> [Char]
	-- konsDot(l,x) menghasilkan sebuah list dari l (list of
	-- elemen) dan x (sebuah elemen),
	-- dengan x sebagai elemen terakhir: l • x -> l' 
isOneElmt :: [Char] -> Bool
	-- isOneElmt(l) true jika list of integer l hanya
	-- mempunyai satu elemen
-- Realisasi
splitAlternate lc =
	let n = (length lc) in
		(splitAlternateOdd n lc, splitAlternateEven n lc)
splitAlternateOdd n lc
	| isOneElmt lc = -- Basis
		[last lc]
	| otherwise = -- Rekurens
		if mod n 2 == 1 then
			konsDot (splitAlternateOdd (n-1) (init lc)) (last lc)
		else
			splitAlternateOdd (n-1) (init lc)
splitAlternateEven n lc
	| isOneElmt lc = -- Basis
		[]
	| otherwise = -- Rekurens
		if mod n 2 == 0 then
			konsDot (splitAlternateEven (n-1) (init lc)) (last lc)
		else
			splitAlternateEven (n-1) (init lc)
konsDot l x = l ++ [x]
isOneElmt l = length l == 1