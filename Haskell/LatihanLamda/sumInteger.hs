fungsi100 :: Int -> Bool 
fungsiGenap10Ganjil5 :: Int -> Bool
fungsiKecil10:: Int -> Bool  

fungsi100 a=
    if mod a 100==0 then True 
    else False 

fungsiGenap10Ganjil5 a=
    if mod a 2==1 then
        if mod a 5==0 then True 
        else False 
    else
        if mod a 10==0 then True 
        else False 

fungsiKecil10 a=
    if a<10 then True 
    else False 


-------------------------------------------------------
--fungsi sum x      sumInteger(a,b,c)
--DEFINISI DAN SPESIFIKASI
sumInteger::Int -> Int -> (Int ->Bool )->Int 
    {-sum seluruh integer yang sesuai dengan fungsi
    -}

--REALISASI
sumInteger a b f=
    if a>b then 0
    else
        if f(a) then a + sumInteger(a+1) b f
        else sumInteger (a+1) b f

--APLIKASI
{-
sumInteger 1 100 fungsi100
sumInteger 1 100 (\a-> (if mod a 100 == 0 then True else False))
100
100

sumInteger 1 100 fungsiGenap10Ganjil5
sumInteger 1 100 (\a-> (if mod a 2==1 then (if mod a 5==0 then True else False) \
else (if mod a 10==0 then True else False)))
1050

sumInteger 25 25 fungsiKecil10
sumInteger 25 25 (\a->(if a<10 then True else False))

0
-}