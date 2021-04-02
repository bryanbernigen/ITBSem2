--latihan 1
--1 3 6 10 15 dst
deretSegitiga n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = n + deretSegitiga(n-1)

--latihan 2
isGanjil n 
    | mod n 2 == 0 = "Genap"
    | otherwise = "Ganjil"

--latihan 3
luasBS s = s*s

--latihan 4
sumOfDigits bil=
    let a = floor bil
    in
        if a == 0 then 0
        else mod a 10  + sumOfDigits(bil/10)

sumOfDigitsNeg bil=
    let 
        a = floor bil 
    in
        if bil<0 then sumOfDigits(bil*(-1)) 
        else 
            if a == 0 then 0
            else mod a 10  + sumOfDigits(bil/10)


--latihan 5
--apaan ini?

--latihan 6
gCD a b c =
    if mod a c ==0 && mod b c == 0 then c
    else gCD a b (c-1)