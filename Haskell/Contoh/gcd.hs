--fpb		fpb m n
--DEFINISI DAN SPESIFIKASI
fpb::Int->Int->Int
{-Fungsi gcd (m,n) menghasilkan nilai fpb pada bilangan m dan n-}
min2::Int->Int->Int
{-Fungsi min2 menghasilkan nilai terkecil diantara dua bilangan-}
cekgcd::Int->Int->Int->Int
{-Fungsi cekgcd(a,b,c) merupakan fungsi antara untuk rekursif gcd-}

--REALISASI
min2 x y
	|	x < y	=	x		
	|	otherwise	=	y	

cekgcd m n k	
	| mod m k == 0 && mod n k == 0 	=	k		--BASIS
	| otherwise		=	cekgcd m n (k-1)		--REKURENS
	
fpb m n	=	cekgcd m n (min2 m n)
--APLIKASI
--fpb 18 81

	
