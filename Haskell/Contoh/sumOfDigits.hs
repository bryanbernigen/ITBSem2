--penjumlahan digit        sumOfDigits(a)

--DEFINISI DAN SPESIFIKASI
sumOfDigits :: Int  -> Int     
    {-menghitung hasil penjumlahan dari setiap bilangan 
    tunggal yang terdapat di dalam sebuah bilangan integer positif
    -}
sumOfDigitsPosNeg:: Int -> Int 
    {-menghitung hasil penjumlahan dari setiap bilangan 
    tunggal yang terdapat di dalam sebuah bilangan integer positif
    dengan mengabaikan tanda ‘-’
    -}

--REALISASI
sumOfDigits a=
    if a<10 then a                                  --basis
    else (mod a 10) + (sumOfDigits (div a 10))      --rekurens
sumOfDigitsPosNeg a=
    if a<0 then sumOfDigits(a*(-1))                 
    else sumOfDigits(a)

--APLIKASI
{-sumOfDigits 123
    maka akan menghasilkan nilai
    1+2+3=6-}
{-sumOfDigitsPosNeg (-123)
    jika input negatif maka akan mengalikan input dengan (-1)
    sehingga hasilnya bisa dihitung dengan fungsi sumOfDigits
    seperti (-123) akan menghasilkan nilai 6-}