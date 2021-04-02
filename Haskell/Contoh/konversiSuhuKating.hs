--	NIM/Nama	: 16514310/Adi Purnama
--	Nama file	: P011651431015021802.hs
--	Topik			: Ekspresi Dasar dan Kondisional
--	Tanggal		: 18 Februari 2015
--	Deskripsi : Fungsi untuk konversi suhu dari celcius ke satuan lain


--KONVERSISUHU				konversiSuhu(a,b)

--DEFINISI DAN SPESIFIKASI
konversiSuhu::Float->Char->Float
{-Fungsi konversiSuhu(a,b) menerima sebuah bilangan dan satuan suhu tujuan . Lalu mengkonversinya dari celcius ke suhu tujuan tersebut-}

--REALISASI
konversiSuhu t k 
	|k == 'K'	=	t+273.15
	|k == 'R'	= 4/5*t
	|k == 'F'	=	(9/5*t) + 32
	
--CONTOH APLIKASI
--konversiSuhu 20 'R'
