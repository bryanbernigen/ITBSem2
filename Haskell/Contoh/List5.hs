-- list.hs

--NIM/Nama		:	16514310 / Adi Purnama
--Nama File		:	P031651431015040305.hs
--Topik			:	List
--Tanggal		:	4 Maret 2015
--Deskripsi		:	Membuat fungsi offsetList yang menerima masukan sebuah list of integer dan menghasilkan list baru dengan elemen hasil “offset”
				--atau perubahan nilai terhadap elemen list masukan. Perubahan nilai dilakukan berdasarkan kondisi berikut (i adalah nilai elemen awal):
{-
   jika i bilangan negatif, maka nilai elemen baru adalah 0

   jika 0 ≤ i ≤ 40, maka nilai elemen baru adalah 5

   jika 41 ≤ i ≤ 65, maka nilai elemen baru adalah 10

   jika 66 ≤ i ≤ 89, maka nilai elemen baru adalah 15

   jika i > 89, maka nilai elemen baru adalah 20
-}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
-- konso(e,li) menghasilkan sebuah list of integer dari e 
-- (sebuah integer) dan li (list of integer), 
-- dengan e sebagai elemen pertama: e o li -> li' 
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
-- konsDot(li,e) menghasilkan sebuah list of integer dari 
-- li (list of integer) dan e (sebuah integer), dengan e
-- sebagai elemen terakhir: li o e -> li'
-- REALISASI
konsDot li e = li ++ [e]


-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head : [Int] -> Int
-- head(l) menghasilkan elemen pertama list l, l tidak kosong

-- tail : [Int] -> [Int]
-- tail(l) menghasilkan list tanpa elemen pertama list l, 
-- l tidak kosong

-- last : [Int] -> Int
-- last(l) menghasilkan elemen terakhir list l, l tidak kosong

-- init : [Int] -> [Int]
-- init(l) menghasilkan list tanpa elemen terakhir list l,
-- l tidak kosong


-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of elemen l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt(l) true jika list of integer l hanya 
-- mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1



--OFFSETLIST			offsetList(l)
--DEFINISI DAN SPESIFIKASI
offsetList::[Int]->[Int]
{-Fungsi offsetList(l) menerima sebuah list dan mengeluarkan sebuah list yang berdasarkan hasil offset-}
--REALISASI
offsetList l	=	if isEmpty l then []				--basis
					else
						let a =	offsetList (tail l)		--rekurens
						in
						if head l < 0 then konso 0 a
						else if head l <= 40 then konso 5 a
						else if head l <= 65	then konso 10 a
						else if head l <= 89	then konso 15 a
						else	konso 20 a
						

					
