--	NIM/Nama	: 16514310/Adi Purnama
--	Nama file	: P011651431015021804.hs
--	Topik			: Ekspresi Dasar dan Kondisional
--	Tanggal		: 18 Februari 2015
--	Deskripsi : Sum Genap

--SUMGENAP			sumGenap(m,n)
--DEFINISI DAN SPESIFIKASI
sumGenap::Int->Int->Int
{-Fungsi sumgenap(m,n) akan menghasilkan nilai penjumlahan bilangan genap antara m & n  (m& n termasuk) -}
--REALISASI
sumGenap m n
	|	m > n	=	0				--Basis
	| otherwise = (if (mod m 2 == 0) then m else 0) + sumGenap (m+1) n	--Rekurens
	
--APLIKASI
--sumgenap 2 10
