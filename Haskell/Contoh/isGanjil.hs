--ganjill		isGanjil(a)

--DEFINISI DAN SPESIFIKASI
isGanjil::Int->Bool
    {- True jika ganjil dan False jika genap 
    -}

--REALISASI

isGanjil a =
	if a==0 then False 				--basis
	else
		if a==1 then True 
		else isGanjil(a-2)			--rekurens

--APLIKASI
{-isGanjil 5
	maka akan menampilkan True-}
