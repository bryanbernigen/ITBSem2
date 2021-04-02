--	NIM/Nama	: 16514310/Adi Purnama
--	Nama file	: P011651431015021804.hs
--	Topik			: Ekspresi Dasar dan Kondisional
--	Tanggal		: 18 Februari 2015
--	Deskripsi : Sum of Digits


--SUMOFDIGITS						sumOfDigits(n)

-- Definisi dan Spesifikasi
sumOfDigits :: Int -> Int
{-Fungsi sumOfDigits(n) akan mengeluarkan hasil penjumlahan dari setiap bilangan tunggal yang membangun masukan -}

-- Realisasi
sumOfDigits n = if n<=9 then n -- Basis
								else sumOfDigits(div n 10) + (mod n 10) -- Rekurens
								
								
--SUM1DOFDIGITS			sum1DOfDigits(n)
--Definisi dan spesifikasi
sum1DOfDigits :: Int -> Int
{-Fungsi sum1DOfDigits(n) akan mengeluarkan hasil penjumlahan dari setiap bilangan tunggal yang membangun masukan,
 namun jika hasil penjumlahan diatas 0..9 , proses penumlahan bilangan pembentuknya akan diulang -}
 --REALISASI
sum1DOfDigits l 
		|	( (sumOfDigits l) >= 0) && ((sumOfDigits l) <=9) = sumOfDigits l	--basis
		| otherwise		=	sum1DOfDigits(sumOfDigits l)		--rekurens
		
		
--APLIKASI
--sum1DofDigits 234
