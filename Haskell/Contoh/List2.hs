-- list.hs

--NIM/Nama		:	16514310 / Adi Purnama
--Nama File		:	P031651431015040302.hs
--Topik			:	List
--Tanggal		:	4 Maret 2015
--Deskripsi		:	Membuat fungsi searchLastPos  yang menerima masukan sebuah bilangan integer n dan sebuah list of integer l, dan akan mengembalikan posisi kemunculan terakhir n pada l. 
					--Apabila n bukan elemen l, maka fungsi mengembalikan 0. 

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


--SEARCHLASTPOS		searchLastPos(x,l)

--DEFINISI DAN SPESIFIKASI
searchLastPos::Int->[Int]->Int
{-Fungsi searchLastPos(x,l) mengeluarkan posisi terakhir elemen x pada list l. Akan mengeluarkan nilai 0 apabila
  x bukan merupakan anggota l-}
isMember::Int->[Int]->Bool
{-Fungsi isMember(x,l) berfungsi untuk mengecek apakah elemen x merupakan bagian dari list l-}

--REALISASI
isMember x l	=	if (isEmpty l) then False						--basis
					else ((head l) == x ) || isMember x (tail l)	--rekurens
					
searchLastPos x	l	=	if (isMember x l) == False then 0				--basis
						else
							1 + searchLastPos x (tail l)			--rekurens
