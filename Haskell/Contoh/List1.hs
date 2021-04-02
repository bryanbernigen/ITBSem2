--NIM/Nama		:	16514310 / Adi Purnama
--Nama File		:	P031651431015040301.hs
--Topik			:	List
--Tanggal		:	4 Maret 2015
--Deskripsi		:	Membuat fungsi statNeg yang mengeluarkan hasil penjumlahan elemen negatif list dan banyaknya elemen negatif

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


--sumNeg				sumNeg(l)
-- Definisi dan Spesifikasi
sumNeg :: [Int] -> Int
{- sumNeg l mengembalikan hasil penjumlahan semua elemen list l yang
   bernilai negatif (<0) -}
--REALISASI
sumNeg l	=	if (isEmpty l) then 0		--basis
				else (if (head l) < 0 then (head l) else 0) + sumNeg (tail l)	--rekurens


--nbElmtNeg				nbElmtNeg(l)
nbElmtNeg :: [Int] -> Int
{- nbElmtNeg l menghasilkan banyaknya elemen list L yang bernilai negatif -}
--REALISASI
nbElmtNeg l	=	if (isEmpty l) then 0	--basis
				else (if (head l) < 0 then 1 else 0) + nbElmtNeg (tail l) --rekurens
				
--statNeg			statneg(l)
statNeg :: [Int] -> (Int,Int)
{- statNeg l menghasilkan pasangan nilai (a,b):
   a adalah hasil penjumlahan seluruh elemen list yang bernilai negatif dan
   b adalah banyaknya elemen list l yang bernilai negatif -}
--REALISASI
statNeg l 	=	(sumNeg l , nbElmtNeg l)

