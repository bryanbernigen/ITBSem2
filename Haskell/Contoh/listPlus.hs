--LISTPLUS			listPlus(m,n)
--DEFINISI DAN SPESIFIKASI
listPlus::[Int]->[Int]->[Int]
{-Fungsi listPlus(m,n) menerima dua buah list dan mengeluarkan sebuah list yang elemennya merupakan
 hasil penjumlahan elemen dari kedua buah list. Asumsi panjang list m & n sama -}
konso::Int->[Int]->[Int]
{-Fungsi konso (e,l) berfungsi untuk menggabungkan elemen e kedalam list l -}

--REALISASI
konso e l	= [e] ++ l

isOneElemt l =	length l == 1

listPlus m n 
	|	isOneElemt m 	=	[head m+head n]							--BASIS
	|	otherwise	=	konso (head m+head n) (listPlus (tail m) (tail n))	--REKURENS
	
--APLIKASI
--listPlus [2,5,6] [2,2,2]
