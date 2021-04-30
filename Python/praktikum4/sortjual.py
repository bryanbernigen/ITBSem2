# Program SortSiswa
# Spesifikasi : ....
import tulisdata

# KAMUS
# namafile: string
#....

# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataJual(namafile)
f=open("{}".format(namafile),"r")
list_panjang=f.readlines()
if list_panjang==[]:
    print("File kosong")
    exit()    
list_panjang=[line.replace("\n","") for line in list_panjang]

#membuat matrix
matrix=[]
list_dummy=[]
for i in range(len(list_panjang)-1):
    if i%3==2:
        list_dummy.append(list_panjang[i])
        matrix.append(list_dummy)
        list_dummy=[]
    else:
        list_dummy.append(list_panjang[i])
matrix.append(list_panjang[len(list_panjang)-1])

if matrix==["99999999"]:
    print("File kosong")
    exit()

#mensort matrix secara selection sort
for passke in range(1,len(matrix)-1):
    nmin=passke-1
    for j in range(passke,len(matrix)-1):
        if int(matrix[j][0])<int(matrix[nmin][0]):
            nmin=j
    matrix[nmin],matrix[passke-1]=matrix[passke-1],matrix[nmin]

for j in range(len(matrix)-1):
    print(matrix[j][0]+','+matrix[j][1]+','+matrix[j][2])