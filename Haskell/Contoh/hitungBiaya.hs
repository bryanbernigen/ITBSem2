--mengitung biaya rawat inap        hitungBiaya(k,h,s,a)

--DEFINISI DAN SPESIFIKASI
hitungBiaya :: Int -> Int -> Int -> Bool -> Int 
    {- menghitung biaya rumah sakit
    k menandakan kelas (1/2/3) 
    h menandakan hari dengan 
    Kelas 1 = Rp. 750.000,-/hari
    Kelas 2 = Rp. 600.000,-/hari
    Kelas 3 = Rp. 400.000,-/hari
    s menandakan banyaknya dokter dengan biaya Rp. 1.500.000,- per dokter tanpa menghitung hari
    a menandakan anggota. jika ya, maka potongan 20% dari biaya kamar dan potongan 10% dari biaya dokter
    -}
biayaKamar :: Int -> Int -> Int
    {- menghitung total harga kamar
    -}
biayaDokter :: Int -> Int
    {- menghitung total harga dokter
    -}

--REALISASI
biayaKamar k h
    |k==1 = h*750000
    |k==2 = h*600000
    |k==3 = h*400000
    |otherwise = 0

biayaDokter s = s*1500000

hitungBiaya k h s a =
    if (k<0)||(k>3)||(h<0)||(s<0) then 0
    else
        if a then
            if k==1 then (h*600000)+(s*1200000)
            else
                if k==2 then (h*480000)+(s*1200000)
                else (h*320000)+(s*1200000)
        else biayaKamar k h + biayaDokter s