--isXElemtKeN		isXElemtKeN(x,n,l)
--DEFINISI DAN SPESIFIKASI
isXElemtKeN::Int->Int->[Int]->Bool
{-Fungsi isXElemtKeN(x,n,l) menghasilkan nilai true apabila x merupakan elemen ke n di list l,
  asumsi list l tidak kosong dan n <= panjang list l-}

--REALISASI
isXElemtKeN x n l 
	|	n == 1 	=	x == head l		--BASIS
	|	otherwise	=	isXElemtKeN x (n-1) (tail l) --REKURENS
	
--APLIKASI
--isXElemtKeN 2 2 [1,2,4,5,6]
