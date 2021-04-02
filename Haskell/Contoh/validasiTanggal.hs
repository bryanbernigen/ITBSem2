--Adi Purnama - 16514310

--ISDATEVALID			isDateValid(d,m,y)
--DEFINISI DAN SPESIFIKASI
isDateValid :: Int->Int->Int->Bool
{-isDateValid(d,m,y) mengembalikan nilai true jika
d, m, y membentuk date yang valid. Definisi date yang
valid adalah jika elemen hari (d) bernilai antara 1
dan 31, tergantung pada bulan dan apakah tahun kabisat
atau bukan, elemen bulan (m)
bernilai antara 1 dan 12,
dan elemen tahun (y) bernilai lebih dari antara 0 dan
99-}
isKabisat :: Int->Bool
{-Fungsi isKabisat(x) menerima sebuah integer yang menyatakan tahun.
 Mengeluarkan nilai true apabila  x mod 4 = 0-} 
isYearValid :: Int ->Bool
{-Fungsi isYearValid(x) menerima sebuah integer yang menyatakan tahun.
 Mengeluarkan nilai true apabila  x >=0 dan x<=99-} 
--REALISASI
isKabisat x = mod x 4 == 0
isYearValid x = x>=0 && x<=99
isDateValid d m y 
	|		isYearValid y && m==2 = if (isKabisat y) then d>=0 && d<=29 else d>=0 && d<=28
	|		isYearValid y && m/=2  =  if (m == 1 || m==3 || m==5 || m==7 || m==8 || m==10 || m == 12)  then d>=0 && d<=31
									else d>=0 && d>=30
	|		otherwise = False
--APLIKASI
--isDateValid 1 1 1
