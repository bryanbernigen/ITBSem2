--	NIM/Nama	: 16514310/Adi Purnama
--	Nama file	: P011651431015021803.hs
--	Topik			: Ekspresi Dasar dan Kondisional
--	Tanggal		: 18 Februari 2015
--	Deskripsi : Menghitung jam lembur karyawan


--LEMBUR				jamLembur(j,m,d)

--DEFINISI DAN SPESIFIKASI
jamLembur::Int->Int->Int->(Bool,Int,Int,Int)
{-Lembur(j,m,d) menerima masukan jam pulang karyawan. Fungsi ini akan menghasilkan nilai true apabila
 karyawan tersebut lembur dan menampilkan jumlah jam lembur karyawan sejak 16.30.00 -}
 
detik::Int->Int->Int->Int
{-Fungsi detik(j,m,d) menerima masukan bilanga jam menit dan detik, mengeluarkan jumlah
detik sejak 0:0:0 pada hari itu -}



 
--REALISASI
detik j m d	=	 (j*3600) + (m*60) + d

jamLembur j m d	
		|	detik j m d > detik 16 30 0 =		
						let	selisih =	 (detik j m d) - (detik 16 30 0)
								in
									(True , (div selisih 3600) , div (mod selisih 3600)  60 , mod selisih 60)
		|	otherwise	=	 
							let	selisih =	  (detik 16 30 0) - (detik j m d) 
								in
									(False , (div selisih 3600) , div (mod selisih 3600)  60 , mod selisih 60)
									
									
--APLIKASI
--jamLembur 2 10 0
