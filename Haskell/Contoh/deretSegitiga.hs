--deret segitiga			deretSegitiga(a)


--DEFINISI DAN SPESIFIKASI
deretSegitiga::Int->Int
    {- mencari nilai bilangan ke-n dalam deret segitiga
    -}

--REALISASI
deretSegitiga n =
	if n==1 then 1                      --basis
	else n+(deretSegitiga (n-1))        --rekurens

--APLIKASI
{- deretSegitiga 5
    maka akan menghasilkan
    5+4+3+2+1 = 15-}

