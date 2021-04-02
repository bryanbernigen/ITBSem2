-- Definisi dan Spesifikasi
splitList :: [Int] -> ([Int],[Int]) 
	{- splitList(li) menghasilkan 2 list of integer, list pertama memuat bilangan positif dan 0 yang merupakan elemen dari li (dengan urutan kemunculan yang tidak berubah), sedangkan list kedua memuat bilangan negatif elemen li.
	Prekondisi: li mungkin kosong -}
splitListPos :: [Int] -> [Int]
splitListNeg :: [Int] -> [Int]
isEmpty :: [Int] -> Bool
	-- isEmpty(l) true jika list of elemen l kosong
konso :: Int -> [Int] -> [Int]
	-- konso(x,l) menghasilkan sebuah list dari x (sebuah
	-- elemen) dan l (list of elemen),
	-- dengan x sebagai elemen pertama: x o l -> l'
-- Realisasi
splitList li = (splitListPos li,splitListNeg li)
splitListPos li
	| isEmpty li = [] -- Basis
	| otherwise = -- Rekurens
		if head li >= 0 then
			konso (head li) (splitListPos (tail li))
		else
			splitListPos (tail li)
splitListNeg li
	| isEmpty li = [] -- Basis
	| otherwise = -- Rekurens
		if head li < 0 then
			konso (head li) (splitListNeg (tail li))
		else
			splitListNeg (tail li)
konso x l = [x] ++ l
isEmpty l = null l