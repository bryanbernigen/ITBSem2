-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
-- konso e lc menghasilkan sebuah list of Integer dari e (sebuah Integer)  
-- dan lc (list of integer), dengan cc sebagai elemen pertama: e o lc -> lc'
konsDot :: [Int] -> Int -> [Int]
-- konsDot(lc,cc) menghasilkan sebuah list of Integer dari lc (list of 
-- Integer) dan e (sebuah Integer), dengan e sebagai elemen terakhir: 
-- lc o e -> lc'

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong
-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong
-- last :: [Int] -> Int
-- last l  menghasilkan elemen terakhir list l, l tidak kosong
-- init :: [Int] -> [Int]
-- init(l) menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l true jika list of Integer l kosong
isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of Integer l hanya mempunyai satu elemen

-- DEFINISI DAN SPESIFIKASI FUNGSI

-- fungsi - fungsi berikut muncul dalam slide
fx2 :: Int -> Int
-- fx2 x menghitung pangkat 2 dari x
fx3 :: Int -> Int
-- fx3 x menghitung pangkat 3 dari x
isPositif :: Int -> Bool
-- isPositif x benar bila x positif
isOrigin :: Int -> Int -> Bool
-- isOrigin x y benar bila (x,y) adalah (0,0)
isJamValid :: Int -> Int -> Int -> Bool
-- isJamValid j m d  menghasilkan nilai true jika
-- j, m, d menyusun jam yang valid. Definisi jam yang
-- valid adalah jika elemen jam (j) bernilai antara 0
-- dan 23, elemen menit (m) bernilai antara 0 dan 59,
-- dan elemen detik (d) bernilai antara 0 dan 59.
max2 :: Int -> Int -> Int
-- max2 a b mengembalikan nilai maksimum dari a dan b
min2 :: Int -> Int -> Int
-- min2 a b mengembalikan nilai minimum dari a dan b
max3 :: Int -> Int -> Int -> Int
-- max3 a b c mengembalikan nilai maksimum dari a, b, dan c
min3 :: Int -> Int -> Int -> Int
-- min3 a b c mengembalikan nilai minimum dari a, b, dan c
min4 :: Int -> Int -> Int -> Int -> Int
-- min4 a b c d mengembalikan nilai minimum dari a, b, c, dan d
max4 :: Int -> Int -> Int -> Int -> Int
-- min4 a b c d mengembalikan nilai maksimum dari a, b, c, dan d
mo2 :: Int -> Int -> Int -> Int -> Float
-- mo2(a,b,c,d) menghasilkan harga rata-rata dari dua di
-- antara a, b, c, d, dengan mengabaikan nilai terbesar dan
-- nilai terkecil
isKabisat :: Int -> Bool
-- isKabisat y benar jika tahun y adalah tahun kabisat
-- Tahun kabisat didefinisikan sebagai tahun yang habis
-- dibagi 4 tetapi tidak habis dibagi 100 kecuali habis
-- dibagi 400
isDateValid :: Int -> Int -> Int -> Bool
-- isDateValid d m y mengembalikan nilai true jika
-- d, m, y membentuk date yang valid. Definisi date yang
-- valid adalah d bernilai antara 1 dan 31, tergantung
-- pada bulan dan apakah tahun kabisat atau bukan,
-- m bernilai antara 1 dan 12, dan y bernilai antara 0 dan 99
copy :: [Int] -> [Int]
-- copy l menyalin list l ke output
konkat :: [Int] -> [Int] -> [Int]
-- konkat l1 l2 menambahkan l2 ke belakang l1
elmtKeN :: Int -> [Int] -> Int
-- elmtKeN n l mengembalikan elemen ke-n dari list l
isXElmtKeN :: Int -> Int -> [Int] -> Bool
-- isXElmtKeN x n l memeriksa apakah x elemen ke n dari l
maxList:: [Int] -> Int
-- maxList l  mengembalikan elemen terbesar pada l
-- prekondisi: list tidak kosong
maxNb :: [Int] -> (Int,Int)
-- maxNb li  menghasilkan <nilai max, kemunculan nilai max>
-- dari suatu list of integer li: <m,n> dengan m adalah nilai
-- maksimum di li dan n adalah jumlah kemunculan m dalam li
listPlus:: [Int] -> [Int] -> [Int]
-- listPlus l1 l2  mengembalikan list dengan elemen
-- hasil penjumlahan elemen di l1 dan l2.
-- prekondisi: l1 dan l2 memiliki jumlah elemen sama
delNthElmt :: Int -> [Int] -> [Int]
-- delNthElmt n L  menghilangkan elemen ke-n dari L.
-- Asumsi: n lebih kecil atau sama dengan jumlah elemen L
--         L tidak kosong
isUnique :: [Int] -> Bool
-- isUnique lc menghasilkan true jika lc adalah list
-- dengan elemen unik, yaitu tidak ada elemen pada lc
-- yang muncul lebih dari 1 kali
isEqFront :: [Int]->[Int]->Bool
-- isEqFront t1 t2  menerima masukan dua buah list of integer
-- keluaran true jika potongan awal list t2 mengandung t1 dan false jika tidak
countFactorOfX :: Int->[Int]->Int
-- countFactorOfX(n,l) mengembalikan jumlah kemunculan
-- bilangan yang merupakan faktor dari n pada l
splitList1 :: [Int] -> ([Int],[Int])
-- splitList(li) menghasilkan 2 list of integer, list
-- yang pertama memuat bilangan positif dan 0 yang merupakan 
-- elemen dari li (dengan urutan kemunculan yang tidak 
-- berubah), sedangkan list kedua memuat bilangan negatif 
-- elemen li.
-- Prekondisi : li mungkin kosong
mergeList :: [Int]->[Int]->[Int]
-- mergeList(li1,li2) menghasilkan list of integer yang
-- merupakan hasil penggabungan li1 dan li2, dan tetap
-- terurut membesar.
-- Prekondisi : li1 dan li2 adalah list terurut membesar
--              dan mungkin kosong
isOrdered :: [Int]->Bool
-- isOrdered(l) menghasilkan true jika elemen-elemen pada
-- l terurut membesar, false jika tidak.
-- Prekondisi : l tidak kosong
posOfX :: Int -> [Int] -> Int
-- posOfX(e,lc) menghasilkan sebuah bilangan integer yang
-- menyatakan posisi e pada list of Integer lc. Jika e
-- bukan elemen dari lc, fungsi akan menghasilkan 0.
-- Prekondisi: lc memiliki elemen unik -}
splitAlternate :: [Int] -> ([Int],[Int])
-- splitAlternate(l) menghasilkan dua buah list, misalnya
-- l1 dan l2. l1 berisi semua elemen l pada posisi
-- ganjil, l2 berisi semua elemen l pada posisi genap -}
sigma :: Int -> Int -> (Int -> Float) -> (Int -> Int) -> Float
-- sigma a b f s adalah penjumlahan dari
-- deret/serie f(i), dengan mengambil nilai
-- subseri a, s(a), s(s(a)),.... pada
-- interval [a..b] atau 0 jika interval kosong
offsetList1 :: [Int] -> (Int -> Int) -> [Int]
-- offSetList1 li offSet dengan li adalah list integer dan offSet
-- adalah sebuah fungsi dengan definisi Offset1 i melakukan offset
-- terhadap nilai i. OffSetList1 menghasilkan sebuah list integer
-- dengan elemen yang sudah di-offset
filterList :: [Int] -> (Int -> Bool) -> [Int]
-- filterList li,f dengan li adalah list of integer dan f adalah
-- sebuah predikat dengan definisi f(i) menghasilkan true jika i
-- memenuhi suatu kondisi tertentu.
-- filterList menghasilkan sebuah list
-- integer dengan elemen yang memenuhi predikat f

-- fungsi - fungsi berikut muncul pada praktikum 1 tahun 2017
luasTrapesium :: Float -> Float -> Float -> Float
-- luasTrapesium t s1 s2 mengembalikan luas dari trapesium
-- dengan sisi s1 s2 dan tinggi t
nilaiTengah :: Int ->  Int -> Int -> Int
-- nilaiTengah a b c mengembalikan median dari bilangan a, b, dan c
jamLembur :: Int -> Int -> Int -> (Bool, Int, Int, Int)
-- jamLembur j m d memeriksa apakah j:m:d lebih dari 16:30:00
-- selisih dari j:m:d dan 16:30:00 ditulis dalam output
-- Ketiga Int menunjukkan jam, menit, detik
tesSyarat :: Float -> Float -> Int
-- tesSyarat ip pot mengembalikan tipe beasiswa yang layak diterima
-- berdasar ip dan pot (penghasilan orang tua)
-- jika pot lebih dari sama dengan 5 juta, tidak ada beasiswa
-- jika ip 3.5 ke atas, beasiswa kategori 4
-- jika ip di bawah 3.5 dan pot di bawah 1, beasiswa kategori 1
-- jika pot 1 ke atas tapi di bawah 5 dan ip 2 ke atas, kategori 3
-- jika pot 1 ke atas tapi di bawah 5 dan ip di bawah 2, kategori 2
-- selain itu kategori 0
sumOfDigits :: Int -> Int
-- sumOfDigits n mengembalikan jumlah dari semua digit n
sumKelipatanX :: Int -> Int -> Int -> Int
-- sumKelipatanX a b x
-- mengembalikan jumlah semua bilangan yang merupakan kelipatan x
-- dan berada di antara a dan b (inklusif)

-- fungsi-fungsi berikut muncul pada praktikum 2 tahun 2017
nbOcc :: [Int] -> Int -> Int
-- nbOcc l x mengembalikan jumlah kemunculan x dalam list l
isEqual :: [Int] -> [Int] -> Bool
-- isEqual l1 l2 true jika seluruh elemen l1 sama dengan elemen di l2
sumElmt :: [Int] -> Int
-- sumElmt l mengembalikan hasil penjumlahan semua elemen list l
nbElmt :: [Int] -> Int
-- nbElmt l menghasilkan banyaknya elemen list l
isPalindrom :: [Int] -> Bool
-- isPalindrom l true jika list of Integer l merupakan palindrom
isMember :: Int -> [Int] -> Bool
-- isMember x l true jika ada elemen x dalam l
makeUnique :: [Int] -> [Int]
-- makeUnique l mengembalikan list yang unique dari l sehingga tidak
-- ada elemen yang muncul lebih dari sekali
averageList :: [Int] -> Float
-- averageList l menghasilkan rata-rata dari seluruh elemen list
pecahList :: [Int] -> ([Int] , [Int])
-- pecahList l akan memindahkan elemen positif atau 0 dalam l ke list
-- output pertama dan elemen negatif ke list output kedua tanpa
-- mengubah urutan kemunculan
offsetList2 :: [Int] -> [Int]
-- offsetList l merubah nilai masing-masing elemen
-- bilangan nol jadi nol
-- bilangan positif jadi 1
-- bilangan negatif -50 lebih menjadi -1
-- bilangan negatif -100 lebih menjadi -2
-- bilangan negatif di bawah -100 menjadi -3

-- fungsi - fungsi berikut muncul dalam UTS tahun 2016
nilaiEkstrim :: [Int] -> (Int,Int)
-- nilaiEkstrim l mengembalikan pasangan integer (min,max), dengan min adalah nilai terkecil pada
-- l dan max adalah nilai terbesar pada l.
-- Prekondisi: l tidak kosong
trunc :: [Int] -> Int -> [Int]
-- trunc l i mengembalikan i buah elemen terdepan dari l.
-- Apabila i lebih besar dari jumlah elemen pada l, maka fungsi mengirimkan l.
-- Prekondisi: i > 0
splitList2 :: [Int] -> ([Int],[Int])
-- splitList2 l mengembalikan dua buah list lfront dan lback, dengan lfront memuat elemen l
-- bagian depan dan lback memuat elemen l bagian belakang.
-- Jumlah elemen pada lfront sama dengan atau 1 elemen lebih banyak dari pada lback.
insSorted :: Int -> [Int] -> [Int]
-- insSorted x l menerima sebuah integer x dan sebuah list l yang terurut membesar serta
-- mengembalikan list l yang telah ditambahkan x sedemikian sehingga elemen-elemennya tetap
-- terurut membesar.

-- REALISASI KONSTRUKTOR
konso e lc = [e] ++ lc

konsDot lc e = lc ++ [e]

-- REALISASI PREDIKAT
isEmpty l = null l

isOneElmt l = (length l) == 1 

-- REALISASI FUNGSI

-- fungsi - fungsi berikut muncul dalam slide

fx2 x = x * x

fx3 x = x * (fx2 x)

isPositif x = x>=0

isOrigin x y = (x == 0) && (y == 0)

isJamValid j m d =
	(j >= 0) && (j < 24) &&
	(m >= 0) && (m < 60) &&
	(d >= 0) && (d < 60)

max2 a b = (div (a+b+(abs(a-b))) 2)

min2 a b = (div (a+b-(abs(a-b))) 2)

max3 a b c = (max2 a (max2 b c))

min3 a b c = (min2 a (min2 b c))

max4 a b c d = max2 (max2 a b) (max2 c d)

min4 a b c d = min2 (min2 a b) (min2 c d)

mo2 a b c d = fromIntegral(a+b+c+d-(max4 a b c d)-(min4 a b c d))/2

isKabisat y = ((mod y 4 == 0) && ((mod y 100 /= 0) || (mod y 400 == 0)))

isDateValid d m y = 
	((y >= 0) && (y < 100) &&
	(m > 0) && (m <= 12) &&
	(((d <= 31) && ((m == 1) || (m == 3) || (m == 5) || (m == 7) || (m == 8) || (m == 10) || (m == 12))) ||
	((d <= 30) && ((m == 2) || (m == 4) || (m == 6) || (m == 9) || (m == 11))) ||
	((d <= 28) && not (isKabisat y) || ((d <= 29) && (isKabisat y))) &&
	(d > 0)))

copy l
	| (isEmpty l) = []
	| otherwise = (konso (head l) (copy (tail l)))

konkat l1 l2
	| (isEmpty l2) = l1
	| otherwise = (konkat (konsDot l1 (head l2)) (tail l2))

elmtKeN n l
	| (isEmpty l) = -1
	| (n == 1) = (head l)
	| otherwise = (elmtKeN (n-1) (tail l))

isXElmtKeN x n l = ((elmtKeN n l) == x)

maxList l
	| (isOneElmt l) = (head l)
	| otherwise = (max2 (head l) (maxList (tail l)))

listPlus l1 l2
	| (isEmpty l1) = []
	| otherwise = (konso ((head l1) + (head l2)) (listPlus (tail l1) (tail l2)))

maxNb l
	| (isOneElmt l) = (head l,1)
	| otherwise =
		let
			(m,n) = (maxNb (tail l))
		in
			if (m < (head l)) then
				(head l, 1)
			else if (m == (head l)) then
				(m, n+1)
			else
				(m,n)

delNthElmt n l
	| (isEmpty l) = []
	| (n == 1) = (tail l)
	| otherwise = (konso (head l) (delNthElmt (n-1) (tail l)))

isUnique l
	| (isOneElmt l) || (isEmpty l) = True
	| otherwise = ((head l) /= (last l) && isUnique (init l) && isUnique (tail l))

isEqFront t1 t2
	| isEmpty t1 = True
	| (head t1 /= head t2) = False
	| otherwise = isEqFront (tail t1) (tail t2)

countFactorOfX n l
	| (isEmpty l) = 0
	| otherwise =
		(if (mod (head l) n == 0) then 1 else 0)+countFactorOfX n (tail l)

splitList1 li
	| isEmpty li = ([],[])
	| otherwise = 
		let (li1,li2) = splitList1(tail li)
		in 
			if (head li >= 0) then 
				(konso (head li) li1, li2)
			else 
				(li1, konso (head li) li2)

mergeList li1 li2
	| isEmpty li1 = li2
	| isEmpty li2 = li1
	| ((head li1) <= (head li2)) =
			konso (head li1) (mergeList (tail li1) li2)
	| otherwise =
			konso (head li2) (mergeList li1 (tail li2))

isOrdered li
	| (isOneElmt li) = True
	| ((head li) > (head (tail li))) = False
	| ((head li) < head (tail li)) = (isOrdered (tail li))

posOfX e l
	| (isEmpty l) = 0
	| ((head l) == e) = 1
	| otherwise = 
		let
			x = (posOfX e (tail l))
		in
			(if (x == 0) then 0 else 1) + x

splitAlternate l
	| isEmpty l = ([],[])
	| otherwise =
		let
			(l1,l2) = (splitAlternate (tail l))
		in
			((konso (head l) l2), l1)
sigma a b f s
	| (a > b) = 0
	| otherwise = ((f a) + sigma (s a) b f s)

offsetList1 l f
	| (isOneElmt l) = [(head l)]
	| otherwise = (konso (f (head l)) (offsetList1 (tail l) f))

filterList li f
	| (isOneElmt li) = if (f (head li)) then li else []
	| otherwise =
		if (f (head li)) then
			(konso (head li) (filterList (tail li) f))
		else
			(filterList (tail li) f)

-- fungsi - fungsi berikut muncul pada praktikum 1 tahun 2017

luasTrapesium t s1 s2 = (t*(s1+s2)/2)

nilaiTengah a b c = (a+b+c - (min3 a b c) - (max3 a b c))

jamLembur j m d = let
		detik1 = (j*3600 + m*60 + d)
		detik2 = (16*3600 + 30*60)
		selisih = abs(detik1-detik2)
	in
		((detik1>detik2), (div selisih 3600), (div (mod selisih 3600) 60), (mod selisih 60))

tesSyarat ip pot
	| (ip >= 3.5) = 4
	| (ip < 3.5 && pot < 1) = 1
	| (pot >= 1 && pot < 5 && ip >= 2) = 3
	| (pot >= 1 && pot < 5 && ip < 2) = 2
	| otherwise = 0

sumOfDigits n
	| (n == 0) = 0
	| otherwise = ((mod n 10) + (sumOfDigits (div n 10)))

sumKelipatanX a b x
	| (a>b) = 0
	| ((mod a x) == 0) = (a + (sumKelipatanX (a+1) b x))
	| otherwise = (sumKelipatanX (a+1) b x)

-- fungsi - fungsi berikut muncul pada praktikum 2 tahun 2017

nbOcc l x
	| (isEmpty l) = 0
	| ((head l) == x) = 1 + (nbOcc (tail l) x)
	| otherwise = (nbOcc (tail l) x)

isEqual l1 l2
	| ((isEmpty l1) && (isEmpty l2)) = True
	| ((isEmpty l1) || (isEmpty l2)) = False
	| ((head l1) == (head l2)) = (isEqual (tail l1) (tail l2))
	| otherwise = False

sumElmt l
	| (isEmpty l) = 0
	| otherwise = (head l) + (sumElmt (tail l))

nbElmt l
	| (isEmpty l) = 0
	| otherwise = 1 + (nbElmt (tail l))

isPalindrom l
	| (isEmpty l) = True
	| (isOneElmt l) = True
	| ((head l) /= (last l)) = False
	| otherwise = (isPalindrom (tail (init l)))

isMember x l
	| (isEmpty l) = False
	| ((head l) == x) = True
	| otherwise = (isMember x (tail l))

makeUnique l
	| (isEmpty l) = []
	| (isMember (last l) (init l)) = (makeUnique (init l))
	| otherwise = (konsDot (makeUnique (init l)) (last l))

averageList l
	| (isEmpty l) = 0
	| otherwise =  (fromIntegral(sumElmt l) / fromIntegral(nbElmt l))

pecahList l
	| (isEmpty l) = ([],[])
	| otherwise =
		let
			(l1,l2) = (pecahList (tail l))
		in
			if ((head l) >= 0) then
				((konso (head l) l1),l2)
			else
				(l1, (konso (head l) l2))

offsetList2 l
	| (isEmpty l) = []
	| ((head l) > 0) = (konso 1 (offsetList2 (tail l)))
	| ((head l) == 0) = (konso 0 (offsetList2 (tail l)))
	| ((head l) >= -50) = (konso (-1) (offsetList2 (tail l)))
	| ((head l) >= -100) = (konso (-2) (offsetList2 (tail l)))
	| otherwise = (konso (-3) (offsetList2 (tail l)))

nilaiEkstrim l
	| (isOneElmt l) = ((head l),(head l))
	| otherwise =
		let
			(min,max) = (nilaiEkstrim (tail l))
		in
			((if ((head l) < min) then (head l) else min),
			(if ((head l) > max) then (head l) else max))

trunc l i
	| (isEmpty l) = []
	| (i == 0) = []
	| otherwise = (konso (head l) (trunc (tail l) (i-1)))

splitList2 l
	| (isEmpty l) = ([],[])
	| (isOneElmt l) = ([(head l)],[])
	| otherwise = 
		let
			(lfront,lback) = (splitList2 (tail (init l)))
		in
			((konso (head l) lfront),(konsDot lback (last l)))

insSorted x l
	| (isEmpty l) = [x]
	| (x <= (head l)) = (konso x l)
	| otherwise = (konso (head l) (insSorted x (tail l)))
