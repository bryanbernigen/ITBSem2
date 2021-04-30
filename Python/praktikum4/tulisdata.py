# Module untuk menulis data file keperluan praktikum

# type dataSiswa  : (NoInduk: string, KodeKursus : string, Nilai : integer)

def TulisDataSiswa(namafile):
    # Menulis data mahasiswa ke file namafile
    # Kamus
    # f : file teks
    # Algoritma
    f = open(namafile,'w')
    row1 = input().rstrip() # NoInduk
    # simpan sampai teks = 99999999
    while (row1 != "99999999"):
        # asumsikan selalu baca 3 data
        f.write(row1 + "\n") # write NoInduk
        row2 = input() # KdKul
        f.write(row2 + "\n") # write KodeKursus
        row3 = input() # nilai
        f.write(row3 + "\n") # write Nilai
        # simpan ke file
        row1 = input().rstrip() # next-NoInduk
    # tulis mark
    f.write(row1) # mark
    f.close()
    return


# Module untuk menulis data file keperluan praktikum

# type dataSaham  : <IdPemilik : string, IdPT : string, Nilai : integer> 

def TulisDataSaham(namafile):
    # Menulis data kepemilikan saham ke file namafile
    # Kamus
    # f : file teks
    # Algoritma
    f = open(namafile,'w')
    row1 = input().rstrip() # IdPemilik
    # simpan sampai teks = 99999999
    while (row1 != "99999999"):
        # asumsikan selalu tulis 3 data
        f.write(row1 + "\n") # write IdPemilik
        row2 = input() # KdKul
        f.write(row2 + "\n") # write IdPT
        row3 = input() # nilai
        f.write(row3 + "\n") # write Nilai
        # simpan ke file
        row1 = input().rstrip() # next-IdPemilik
    # tulis mark
    f.write(row1) # mark
    f.close()
    return

# Module untuk menulis data file keperluan praktikum

# type dataJual = (KdKategori: string, KdProduk : string, Hasil : integer)

def TulisDataJual(namafile):
    # Menulis data penjualan ke file namafile
    # Kamus
    # f : file teks
    # Algoritma
    f = open(namafile,'w')
    row1 = input().rstrip() # KdKategori
    # simpan sampai teks = 99999999
    while (row1 != "99999999"):
        # asumsikan selalu tulis 3 data
        f.write(row1 + "\n") # write KdKategori
        row2 = input() # KdKul
        f.write(row2 + "\n") # write KdProduk
        row3 = input() # nilai
        f.write(row3 + "\n") # write Hasil
        # simpan ke file
        row1 = input().rstrip() # next-KdKategori
    # tulis mark
    f.write(row1) # mark
    f.close()
    return

# Module untuk menulis data file keperluan praktikum

# type dataMhs = (NIM:int, KdKul:string, Nilai:int)

def TulisDataMhs(namafile):
    # Menulis data mahasiswa ke file namafile
    # Kamus
    # f : file teks
    # Algoritma
    f = open(namafile,'w')
    row1 = input().rstrip() # NIM
    # simpan sampai teks = 99999999
    while (row1 != "99999999"):
        # asumsikan selalu baca 3 data
        f.write(row1 + "\n") # write NIM
        row2 = input() # KdKul
        f.write(row2 + "\n") # write KdKul
        row3 = input() # nilai
        f.write(row3 + "\n") # write nilai
        # simpan ke file
        row1 = input().rstrip() # next-NIM
    # tulis NIM terakhir
    f.write(row1) # mark
    f.close()