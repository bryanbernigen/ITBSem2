--off set list        offSetList(a,b,c,d)

--DEFINISI DAN SPESIFIKASI
offSetList ::  (Float ->Float ) -> (Float ->Float ) -> Float -> Float ->[Float ]
    {- 
    -}
konso :: Float  -> [Float  ] -> [Float  ]
    {- 
    -}
konsdot :: Int -> [Int ] -> [Int ]
    {- 
    -}
isEmpty :: [Int ]-> Bool 
    {- 
    -}
isOneElmt :: [Int] -> Bool
    {- 
    -}
kuadrat :: Float ->Float 
naek1 :: Float -> Float 
--REALISASI
konso e li = [e] ++ li
konsdot e li = li ++ [e]
isEmpty l = null l
isOneElmt l = (length l) == 1

--Fungsi Yang Dimasukkan
kuadrat x = x*x
naek1 x = x+1

offSetList f1 f2 a b =
    if (f1 a)>b then []
    else konso (f1 a) (offSetList f1 f2 (f2 a) b)

--APLIKASI