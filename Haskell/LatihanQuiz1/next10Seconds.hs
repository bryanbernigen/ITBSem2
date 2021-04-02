--10 detik kemudian        next10Seconds(j,m,d)

--DEFINISI DAN SPESIFIKASI
next10Seconds :: Int  -> Int  -> Int -> (Int ,Int ,Int )
    {- input jam menit detik dan akan dikeluarkan waktu
    10 detik kemudian
    -}

--REALISASI
next10Seconds j m d=
    if (j<0)||(j>23)||(m<0)||(m>60)||(d<0)||(d>60) then (0,0,0) 
    else 
        if (d>49) then 
            if (m>58) then
                if (j>22) then (0,0,(d+10-60))
                else ((j+1),0,(d+10-60))
            else (j,(m+1),(d+10-60))
        else (j,m,(d+10))
            

--APLIKASI