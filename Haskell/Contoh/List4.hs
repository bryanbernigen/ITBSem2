-- list.hs

--NIM/Nama		:	16514310 / Adi Purnama
--Nama File		:	P031651431015040304.hs
--Topik			:	List
--Tanggal		:	4 Maret 2015
--Deskripsi		:	Membuat fungsi pecahList yang menerima sebuah list. Fungsi ini akan memecahnya menjadi dua list l1,l2.
--					l1 memuat semua elemen l yang bernilai positif atau 0 sedangkan l2 memuat semua elemen l yang bernilai negatif. Urutan kemunculan elemen pada l1 dan l2 tetap sama dengan urutan elemen pada l.


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



--PECAHLIST					pecahList(l)
--DEFINISI DAN SPESIFIKASI
pecahList::[Int]->([Int],[Int])
{-Fungsi pecahList(l) amenerima masukan sebuah list of integer (l) dan mengembalikan dua buah list of integer (l1, l2). 
l1 memuat semua elemen l yang bernilai positif atau 0 sedangkan l2 memuat semua elemen l yang bernilai negatif.
 Urutan kemunculan elemen pada l1 dan l2 tetap sama dengan urutan elemen pada l.-}
--REALISASI
pecahList l	=	if (isEmpty l) then ([],[])						--basis
				else
				let	(a,b)	=	pecahList (tail l)				--rekurens			
					c		= 	head l
				in
					if c >= 0 then ( konso c a , b)
					else	(a , konso c b)
					
