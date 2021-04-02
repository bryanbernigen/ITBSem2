--Adi Purnama - 16514310

--KEDETIK			kedetik(j,m,d)
--DEFINISI DAN SPESIFIKASI
kedetik :: Int->Int->Int->Int
{-Fungsi kedetik(j,m,d) menerima masukan tiga buah bilangan yang menyatakan
jam, menit, dan detik. Fungsi ini mengeluarkan jumlah detik sejak jam 0.0.0 
pada tanggal tersebut-}
--REALISASI
kedetik j m d = (j*3600) + (m*60) + d
--APLIKASI
kedetik 8 10 59

