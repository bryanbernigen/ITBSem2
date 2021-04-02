-- list.hs

--NIM/Nama		:	16514310 / Adi Purnama
--Nama File		:	P031651431015040303.hs
--Topik			:	List
--Tanggal		:	4 Maret 2015
--Deskripsi		:	Membuat fungsi setDiff  yang menerima dua buah list integer (unik terurut membesar) , mengembalikan list integer
					--elemen l1 yang tidak ada di l2--

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


--SetDiff			setDiff(m,n)
--DEFINISI DAN SPESIFIKASI
setDiff::[Int]->[Int]->[Int]
{-Fungsi setDiff(m,n) menerima dua masukan list (terurut membesar, unik) . Fungsi ini mengeluarkan sebuah 
  list integer yang elemennya adalah semua elemen l1 yang tidak ada di l2.-}
isDiff::Int->[Int]->Bool
{-Fungsi isDiff(x,l) menentukan apakah x bukan merupakan elemen l-}
--REALISASI
isDiff x l	=	if (isOneElmt l) then x /= (head l)			--basis
				else if (isEmpty l) then True				--basis
				else if x < (head l) then True				--basis
				else if x == (head l) then False			--basis
				else	isDiff x (tail l)					--rekurens
				
				
setDiff m n	=	if (isEmpty m) then []												--basis
				else if isDiff (head m) n then konso (head m) (setDiff (tail m) n)	--rekurens
				else	setDiff (tail m) n
	

