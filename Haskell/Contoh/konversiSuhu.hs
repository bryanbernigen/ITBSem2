--konversi suhu        konversiSuhu(a,f)

--DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> (Float -> Float) -> Float
    {- 
    -}
cToK :: Float -> Float
kToC :: Float -> Float
cToR :: Float -> Float
rToC :: Float -> Float    

--REALISASI
cToK a = a + 273
kToC a = a - 273
cToR a = a*0.8
rToC a = a*1.2
konversiSuhu a f = f a 

--APLIKASI