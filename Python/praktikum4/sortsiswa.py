# Program SortSiswa
# Spesifikasi : ....
import tulisdata

# KAMUS
# namafile: string
#....

# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataSiswa(namafile)
f=open("{}".format(namafile),"r")
list_panjang=f.readlines()
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

if matrix==[]:
    print("File kosong")
    exit()

#mengubah kolom 1 matrix menjadi integer
for j in range(len(matrix)-1):
    matrix[j][0]=int(matrix[j][0])

#mensort matrix secara insertion sort
pass_ke=0
for j in range(1,len(matrix)-1):
    data_yang_di_sort=matrix[j]
    NIM_yang_di_sort=data_yang_di_sort[0]
    pass_ke+=1
    for jj in range(pass_ke):
        if NIM_yang_di_sort<matrix[jj][0]:
            for i in range(pass_ke,jj,-1):
                matrix[i]=matrix[i-1]
            matrix[jj]=data_yang_di_sort

j=0
while matrix[j]!="99999999":
    print(str(matrix[j][0])+","+matrix[j][1]+','+matrix[j][2] )
    j+=1