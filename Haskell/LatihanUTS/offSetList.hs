konso :: Float  -> [Float ] -> [Float ]
konsdot :: Float  -> [Float ] -> [Float ]
isEmpty :: [Float ] -> Bool
isOneElement :: [Float ] -> Bool

--KONSTRUKTOR
konso a li = [a] ++ li
konsdot a li = li ++ [a]
--SELEKTOR
{-
head - elemen
tail - list
last - elemen
init - list
-}
--PREDIKAT DASAR
isEmpty li = null li
isOneElement li = (length li) == 1

--offsetList        offSetList(a,b,c,d)

--DEFINISI DAN SPESIFIKASI
offSetList :: (Float ->Float)->(Float ->Float )->Float ->Float ->[Float ] 
    {-membuat list dengan berisi dari a sampai dengan isi f(a) dan kenaikan f(b)
    -}

--REALISASI
offSetList f g a b=
    if a>b then []
    else
        konso (f(a)) (offSetList f g (g(a)) b)

--APLIKASI
{-
offSetList (\x->x) (\x->x+1) 1 10
[1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0]

offSetList (\x->x*x) (\x->x+1) 1 10
[1.0,4.0,9.0,16.0,25.0,36.0,49.0,64.0,81.0,100.0]

offSetList (\x->x) (\x->x+2) 1.2 7.1
[1.2,3.2,5.2]

(\x->(if x<0 then (-999.0) else (x+3.2))) (\x->x+0.5) (-1) 1
[-999.0,-999.0,3.2,3.7,4.2]
-}