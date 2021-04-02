--Adi Purnama - 16514310

--NILAITENGAH		tengah(a,b,c)
--DEFINISI DAN SPESIFIKASI
nilaitengah :: Int->Int->Int->Int
max3 :: Int->Int->Int
	{-Menghasilkan nilai terbesar dari tiga bilangan-}
min3 :: Int->Int->Int
	{-Menghasilkan nilai terkecil dari tiga bilangan-}
--REALISASI
max3 x y z
	|	 x>y && x>z = x
	|	 y>x && y>z = y
	| 	 z>x && z>y = z
min3 x y z
	|	 x<y && x<z = x
	|	 y<x && y<z = y
	| 	 z<x && z<y = z

nilaitengah a b c =  a+b+c- max3 a b c -(min3 a b c)

--APLIKASI
	--nilaitengah 2 3 4

			
			
