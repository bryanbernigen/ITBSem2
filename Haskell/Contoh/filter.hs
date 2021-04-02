-- Definisi dan Spesifikasi
filterGanjil :: [Int] -> [Int]
isEmpty :: [Int] -> Bool
	-- isEmpty(l) true jika list of elemen l kosong
konsDot :: [Int] -> Int -> [Int]
	-- konsDot(l,x) menghasilkan sebuah list dari l (list of
	-- elemen) dan x (sebuah elemen),
	-- dengan x sebagai elemen terakhir: l • x -> l' 
-- Realisasi
filterGanjil li
	| isEmpty li = [] -- Basis
	| otherwise = -- Rekurens
		if mod (last li) 2 == 1 then
			konsDot (filterGanjil (init li)) (last li)
		else
			filterGanjil (init li)
isEmpty l = null l
konsDot l x = l ++ [x]