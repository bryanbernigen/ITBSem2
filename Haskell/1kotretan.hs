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




--DEFINISI DAN SPESIFIKASI
rekapNilai :: [Int]-> (Int->Char) -> (Char->Bool) -> ([Char ],Int)
	{- menerima input list of character, f , dan g. f berfungsi untuk mengubah nilai menjadi indeks.
	g berfungsi untuk menentukan jumlah mahasiswa yang lulus
-}

--REALISASI
rekapNilai list f g=
	let (hasilList, jumlah) = rekapNilai (tail(list)) f g
	in
		if isEmpty list then ([],0)							--Basis
		else
			if isOneElement list then					--Basis
				if g(f (head (list))) then (konso (f(head(list))) [],1) 
				else (konso (f(head(list))) [],0)
			else								--Rekurens
				if g(f (head (list))) then (konso (f(head(list))) hasilList,jumlah+1)
				else (konso (f(head(list))) hasilList, 0)
