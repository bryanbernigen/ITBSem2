volumeLingkaran (r) =
    let pi = 3.14
    in
        (4/3)*pi*r*r*r

luasLingkaran (r) =
    let pi = 3.14
    in
        pi*r*r

mutlak x = abs (x)

maks a b c d = 
    let maksab = if (a>b) then a else b
        makscd = if (c>d) then c else d
        makstotal = if (maksab>makscd) then maksab else makscd
    in
        makstotal

max2 a b | a >= b = a
    | otherwise = b

--faktorial
faktorial n = if n==1 then 1
    else
        faktorial (n-1)*n


maks2 :: Float  -> Float  -> Float     
maks2 a b = (a+b+abs(a-b))/2
min2 :: Float -> Float -> Float 
min2 a b = (a+b-abs(a-b))/2
mean :: Float  -> Float  -> Float  ->Float  
mean a b c = a + b + c - maks2 (maks2 a b) c - min2 (min2 a b) c

