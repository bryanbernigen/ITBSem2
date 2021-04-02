--sum dalam range        sumRange(a,b)

--DEFINISI DAN SPESIFIKASI
sumRange :: Int -> Int -> Int
    {- menerima masukan 2 bilangan integer, misalnya a dan b yang 
    menyatakan rentang bilangan dengan syarat: a £ b; a dan b bilangan 
    positif; dan menghasilkan penjumlahan semua bilangan dari a s.d. b.
    -}

--REALISASI
sumRange a b=
    if (a<0)||(b <0) then 0                 --basis
    else
        if a>b then 0
        else 
            if a==b then a
            else a + (sumRange (a+1) b)     --rekurens

--APLIKASI
{-sumRange 1 5
    maka akan menambah semua bilangan bulat 
    dari 1-5 dan mengasilkan nilai 15-}