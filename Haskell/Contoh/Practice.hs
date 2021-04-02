isEmptyInt :: [Int] -> Bool

isEmptyChar :: [Char] -> Bool

konsInt :: Int -> [Int]-> [Int]

konsFloat :: Float -> [Float]-> [Float]

konsChar :: Char -> [Char]-> [Char]

konsDotInt :: [Int] -> Int -> [Int]

konsDotChar :: [Char] -> Char -> [Char]

isOneElmtInt :: [Int] -> Bool

isOneElmtChar :: [Char] -> Bool

isMemberChar :: Char -> [Char] ->Bool

sumIsiList :: [Int] -> Int

filterGanjil :: [Int] -> [Int]

countFactorOfX :: Int -> [Int] -> Int

delNthElmt :: Int -> [Int] -> [Int]

splitList :: [Int] -> ([Int],[Int])

mergeList:: [Int] -> [Int] -> [Int]

isOrdered :: [Int] -> Bool

isUnique :: [Char] -> Bool

posOfX :: Char -> [Char] -> Int

splitAlternate :: [Char] -> ([Char],[Char])

palindormChar :: [Char] -> Bool

listJomblo :: [Char] -> [Char]

trunc :: [Int] -> Int -> [Int]

isEmptyInt l = (l==[])

isEmptyChar l = (l==[])

konsInt e l = [e] ++ l

konsFloat e l = [e] ++ l

konsChar e l = [e] ++ l

konsDotInt l e = l ++ [e]

konsDotChar l e = l ++ [e]

isOneElmtInt e = (length e)==1

isOneElmtChar e = (length e)==1

splitList2 :: [Int] -> ([Int],[Int])
{- splitList l mengembalikan dua buah list lfront dan lback, dengan lfront memuat elemen l
 bagian depan dan lback memuat elemen l bagian belakang.
 Jumlah elemen pada lfront sama dengan atau 1 elemen lebih banyak dari pada lback.
 Contoh: splitList [3,2,6,5,8] = ([3,2,6],[5,8]) -}
 
insSorted :: Int -> [Int] -> [Int]
{- insSorted x l menerima sebuah integer x dan sebuah list l yang terurut membesar serta
 mengembalikan list l yang telah ditambahkan x sedemikian sehingga elemen-elemennya tetap
 terurut membesar.
 Contoh: insSorted 4 [2,3,5,6] = [2,3,4,5,6] -}
 
sumInteger :: Int -> Int -> (Int -> Bool) -> Int

isGenap :: Int -> Bool

isMemberChar x l = if (isEmptyChar l) then 
                       False
			       else if ((head l)==x)&&(isOneElmtChar l) then 
							True
					    else 
							((head l)==x)||(isMemberChar x (tail l))


sumIsiList l = if (isOneElmtInt l) then (head l)
			   else (head l) + sumIsiList (tail l)
			  
filterGanjil l = if (isEmptyInt l) then []
				 else if (mod (head l) 2==0) then filterGanjil l
				 else (konsInt (head l) (filterGanjil (tail l)))

countFactorOfX n l = if (isEmptyInt l) then 0 
					 else ((if mod n (head l) == 0 then 1
						  else  0) + countFactorOfX n (tail l))

delNthElmt n l = if n==1 then 
					tail l
				 else 
					konsInt (head l) (delNthElmt (n-1) (tail l))

splitList l = if (isEmptyInt l) then
				([],[])
			  else 
					let (p,n) = splitList(tail l)
					in
						if (head l>=0) then
							(konsInt (head l) p, n)
						else
							(p, konsInt (head l) n)

mergeList a b = if (isEmptyInt a) then
					b
				else if (isEmptyInt b) then
					a
				else if ((head a) <= (head b)) then
					konsInt (head a) (mergeList (tail a) b)
				else
					konsInt (head b) (mergeList a (tail b))
				

isOrdered l = if (isOneElmtInt l) then 
					True
			  else (if(head l)>head (tail l) then False else True)&&isOrdered (tail l)

isUnique l = if ((isEmptyChar l) || (isOneElmtChar l)) then True
			 else not(isMemberChar (head l) (tail l))&&isUnique (tail l)
			 
posOfX e l = if (isEmptyChar l) then 
					0
			 else if not (isMemberChar e l) then 
						0
				  else if (e==(head l)) then 
						  1
					   else 
						  (1 + posOfX e (tail l))

splitAlternate l = if (isEmptyChar l) then
					   ([],[])
				   else
						let 
							(a,b) = (splitAlternate (tail l))
						in
							((konsChar (head l) b), a)

palindormChar l = if ((isEmptyChar l)||(isOneElmtChar l)) then 
						True
				  else 
						((head l)==(last l))&& (palindormChar (tail(init l)))
				  
listJomblo l 
		| ((isEmptyChar l)||(isOneElmtChar l)) = l
		| (isMemberChar (last l) (init l)) = (listJomblo (init l))
		| otherwise = (konsDotChar (listJomblo (init l)) (last l))

trunc l i
	| isEmptyInt l = l
	| i==1 = [head l]
	| otherwise = konsInt (head l) (trunc (tail l) (i-1))
	
splitList2 l = if (isEmptyInt l) then
				([],[])
			  else if (isOneElmtInt l) then ([head l], [])
					else
						let (m,n) = splitList2 (tail (init l))
							in
								((konsInt (head l) m ),(konsDotInt n (last l)))

insSorted i l
	| isEmptyInt l = [i]
	| otherwise = if i>head l then konsInt (head l) (insSorted i (tail l))
					else
						konsInt i l

sumInteger a b f
 | (a>b) = 0
 | otherwise = (if (f a) then a else 0) + (sumInteger (a+1) (b) f)

isGenap a = mod a 2 == 0

isAllGanjil :: [Int] -> Bool

isAllGanjil l
	| isEmptyInt l = True
	| otherwise = ((mod (head l) 2) /= 0) && isAllGanjil (tail l) 
	
getSmallest :: [Int] -> Int

getSmallest l
	| isOneElmtInt l = head l
	| otherwise = let a = getSmallest (tail l)
				
					in
						if (head l > a) then a else (head l)

sortList :: [Int] -> [Int]
{- sortList l mengembalikan hasil pengurutan list l hingga elemen-elemennya terurut membesar. Prekondisi: l tidak kosong dan semua elemennya unik. -}
 
sortList l
	| isOneElmtInt l = [head l]
	| otherwise = let p = sortList (tail l)
					in
						if (head l <= head p) then konsInt (head l) p
							else
								konsInt (head p) (sortList (konsInt (head l) (tail p)))
								
offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
{- offsetList f g a b menerima masukan dua buah fungsi, misalnya f dan g, serta dua buah bilangan riil (float), a dan b. Fungsi offsetList akan menghasilkan sebuah list of float yang merupakan penerapan fungsi f terhadap bilangan float antara a dan b, dimulai dari a dengan increment menggunakan fungsi g. -}

offsetList f g a b 
 | a>b = []
 | otherwise = konsFloat (f a) (offsetList f g (g a) b)
 
hitungBiaya :: Int -> Int -> Int -> Bool -> Int
{- HitungBiaya(k,h,s,a) menghasilkan besar biaya yang harus dibayar oleh seorang pasien rawat inap dengan status keanggotaan a yang menginap pada kamar kelas k selama h hari, menggunakan s orang dokter spesialis. k bernilai [1..3], h >= 0, s >= 0 Ketentuan perhitungan biaya adalah sbb: Biaya yang harus dibayarkan oleh pasien terdiri dari dua komponen, yaitu biaya kamar dan biaya dokter spesialis (dokter yang bukan spesialis dianggap bagian dari biaya kamar). Biaya kamar bervariasi berdasarkan kelasnya: Kelas 1 = Rp. 750.000,-/hari Kelas 2 = Rp. 600.000,-/hari Kelas 3 = Rp. 400.000,-/hari Biaya dokter spesialis adalah Rp. 1.500.000,- per dokter setiap kali menginap (tidak memperhitungkan jumlah hari).Bagi pasien yang merupakan Anggota (a = true), maka berhak atas potongan 20% dari biaya kamar dan potongan 10% dari biaya dokter spesialis. -}

hitungBiaya k h s a =
	let
		bhari =
			if k==1 then 750000*h
			else if k==2 then 600000*h
			else 400000*h
		bspc = 1500000*s
	in
		if a then ((div (80*bhari) 100)+(div (90*bspc) 100)) else (bhari+bspc)
		
ekstraTanda :: [Int] -> [Int]
{-  ekstrakTanda yang menerima masukan sebuah list of integer dan menghasilkan list of integer yang menunjukkan tanda bilangan integer pada list masukan. Nilai integer positif akan
dipetakan menjadi 1, nilai integer negatif akan dipetakan menjadi -1, nilai 0 akan tetap 0 -}

ekstraTanda l
	| isEmptyInt l = []
	| otherwise = konsInt (if (head l)>0 then 1 else if (head l)<0 then (-1) else 0) (ekstraTanda (tail l))

pisahDua :: [Int] -> Int -> ([Int],[Int])	
{-  pisahDua yang menerima masukan sebuah list of integer, misalnya L, dan sebuah integer n, dan
digunakan untuk membentuk pasangan nilai berupa dua buah list baru L1 dan L2 -}

pisahDua l x
	| isEmptyInt l = ([], []) -- basis
	| otherwise =
		let
			(l1, l2) = pisahDua (tail l) x -- rekurens
		in
			if (head l) <= x then ((konsInt (head l) l1), l2) else
			(l1, (konsInt (head l) l2))
			
konversiSuhu :: Float -> (Float -> Float) -> Float
{- konversiSuhu menerima sebuah bilangan real yang merepresentasikan suhu dalam satuan derajat tertentu, misalnya t, dan menghasilkan sebuah bilangan real yang merupakan hasil
konversi t berdasarkan suatu fungsi konversi suhu tertentu, misalnya f -}

konversiSuhu t f = f t

deleteIf :: [Int] -> (Int -> Bool) -> [Int] 
{- deleteIf yang menerima masukan sebuah list of integer, misalnya L, dan sebuah kondisi, misalnya f, dan menghasilkan sebuah list of integer baru yang merupakan L yang telah
dihapus elemen-elemennya yang memenuhi kondisi f -}

deleteIf l f
	| isEmptyInt l = [] --basis
	| otherwise = --rekurens
		if not (f (head l)) then konsInt (head l) (deleteIf (tail l) f) else
		(deleteIf (tail l) f)
