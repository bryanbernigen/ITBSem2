# Program RataRataSaham
# Spesifikasi : ....
import tulisdata

# KAMUS
# namafile: string


# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataMhs(namafile)
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

if matrix==['99999999']:
    print("File kosong")
    exit()

#mengubah kolom 1 dan 3 matrix menjadi integer
for j in range(len(matrix)-1):
    matrix[j][0]=int(matrix[j][0])
    matrix[j][2]=int(matrix[j][2])


#mensort matrix secara selectionsort sort
for i in range(len(matrix)-2):
    nmin=i
    for j in range(i,len(matrix)-1):
        if matrix[nmin][0]>matrix[j][0]:
            nmin=j
    matrix[i],matrix[nmin]=matrix[nmin],matrix[i]


list_all_user=[]
list_per_user=[]
total=0
jumlah=0
j=0
current_id=matrix[j][0]
while matrix[j]!='99999999':
    if matrix[j][0]==current_id:
        total+=int(matrix[j][2])
        jumlah+=1
    else:
        rata_rata=round(total/jumlah)
        list_per_user.append(current_id)
        list_per_user.append(rata_rata)
        list_all_user.append(list_per_user)
        list_per_user=[]
        jumlah=1
        total=int(matrix[j][2])
        current_id=matrix[j][0]
    j+=1
rata_rata=round(total/jumlah)
list_per_user.append(current_id)
list_per_user.append(rata_rata)
list_all_user.append(list_per_user)

for j in range(len(list_all_user)):
    print(str(list_all_user[j][0])+"="+str(list_all_user[j][1]))