--ELMTKEN	elmtKeN(l,n)
--DEFINISI DAN SPESIFIKASI
elmtKeN::[Int]->Int->Int
{-Fungsi elmtKeN(l,n) menghasilkan elemen ke n dari sebuah list , asumsi n tidak lebih besar dari
  length l-}
--REALISASI
elmtKeN l n	
	|	n == 1	=	head 		l				--BASIS
	|	otherwise	= elmtKeN (tail l) (n-1)	--REKURENS
--APLIKASI
--elmtKeN [2,5,6] 2
