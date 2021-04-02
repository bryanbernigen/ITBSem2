--	NIM/Nama	: 16514310/Adi Purnama
--	Nama file	: P011651431015021801.hs
--	Topik			: Ekspresi Dasar dan Kondisional
--	Tanggal		: 18 Februari 2015
--	Deskripsi : Menghitung nilai mean olympique , maksimum , minimum menggunakan fungsi pada haskell


-- MEAN-OLYMPIQUE                         MO (u,v,w,x)

-- DEFINISI DAN SPESIFIKASI

mo :: Float -> Float -> Float -> Float -> Float

-- mo (u,v,w,x): menghitung rata-rata dari dua buah bilangan real,

-- yang bukan maksimum dan bukan minimum dari 4 buah real:

-- (u+v+w+x‑min4 (u,v,w,x)‑max4 (u,v,w,x))/2

max4 :: Float -> Float -> Float ->Float -> Float

-- max4 (i,j,k,l) menentukan maksimum dari 4 buah bilangan real

min4 :: Float -> Float -> Float ->Float -> Float

-- min4 (i,j,k,l) menentukan minimum dari 4 buah bilangan real

max2 :: Float -> Float -> Float

-- max2 (a,b) menentukan maksimum dari 2 bilangan real, hanya dengan

-- ekspresi aritmatika: jumlah dari kedua bilangan ditambah dengan

-- selisih kedua bilangan, hasilnya dibagi 2

min2 :: Float -> Float -> Float

-- min2 (a,b) menentukan minimum dari 2 bilangan real,hanya

-- dengan ekspresi aritmatika: jumlah dari kedua bilangan – selisih

-- kedua bilangan, hasilnya dibagi 2

-- REALISASI

max2 a b = (a+b + abs(a-b))/2

min2 a b = (a+b - abs(a-b))/2

max4 a b c d = max2 (max2 a b) (max2 c d)

min4 a b c d = min2 (min2 a b) (min2 c d)

mo a b c d = (a+b+c+d - (max4 a b c d) - (min4 a b c d))/2


-- max2 8 (-10)				=	8.0
-- min2 15 7					=	7.0
-- max4 12 13 (-2) 8	=	13.0
-- min4 12 13 (-2) 8	=	-2.0
-- mo 12 16 5 32			= 14.0



