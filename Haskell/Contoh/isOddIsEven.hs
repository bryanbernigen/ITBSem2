--ISODD 		isOdd x
--DEFINISI DAN SPESIFIKASI
isOdd::Int->Bool
{-Fungsi isOdd(x) menghasilkan nilai true apabila x merupakan bilangan ganjil-}
--REALISASI
isOdd x 
	|	x==0 	=	False	--BASIS
	|	x==1	=	True	--BASIS
	|	otherwise	=	isEven (x-1)	--REKURENS
	

--ISEVEN		isEven x
--DEFINISI DAN SPESIFIKASI
isEven::Int->Bool
{-Fungsi isEven(x) menghasilkan nilai true apabila x merupakan bilangan genap-}
--REALISASI
isEven x
	|	x==0 	=	 True		--BASIS	
	|	x==1	=	False		--BASIS
	|	otherwise	=	isOdd(x-1)	--REKURENS
--APLIKASI
--isEven 24
