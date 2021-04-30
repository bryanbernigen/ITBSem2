# Program RataRataSaham
# Spesifikasi : ....
import tulisdata

# KAMUS
# namafile: string


# ALGORITMA PROGRAM UTAMA
namafile = input()
#tulisdata.TulisDataSaham(namafile)
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

if matrix==['99999999']:
    print("File kosong")
    exit()

#mengubah kolom 1 dan 3 matrix menjadi integer
for j in range(len(matrix)-1):
    matrix[j][0]=int(matrix[j][0])
    matrix[j][2]=int(matrix[j][2])


#mensort matrix secara insertion sort
pass_ke=0
for i in range(len(matrix)-1):
    pass_ke+=1
    indeks_min=i
    id_min=int(matrix[indeks_min][0])
    for j in range(pass_ke,len(matrix)-1):
        if id_min>int(matrix[j][0]):
            indeks_min=j
    matrix[indeks_min],matrix[i]=matrix[i],matrix[indeks_min]
print(matrix)

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
        rata_rata=round(total/jumlah,2)
        list_per_user.append(current_id)
        list_per_user.append(rata_rata)
        list_all_user.append(list_per_user)
        list_per_user=[]
        jumlah=1
        total=int(matrix[j][2])
        current_id=matrix[j][0]
    j+=1
rata_rata=round(total/jumlah,2)
list_per_user.append(current_id)
list_per_user.append(rata_rata)
list_all_user.append(list_per_user)

print(list_all_user)