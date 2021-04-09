#Nama       : Bryan Bernigen
#NIM        : 16520237
#Tanggal    : 9 April 2021

#Kamus

n=0
while n<=0 or n>100:
    n=int(input())
list_dummy=[]
max=-99999
min=99999
for i in range(n):
    nilai=int(input())
    if nilai>max:
        max=nilai
    if nilai<min:
        min=nilai
    list_dummy.append(nilai)
x=int(input())
ada_max=0
ada_min=0
tidak_ada=0
for i in range(n):
    if x==list_dummy[i]:
        if x==max:
            ada_max=1
        if x==min:
            ada_min=1
        tidak_ada=1
            

if tidak_ada==0:
    print(x,"tidak ada")
else:
    if ada_max==1:
        print("maksimum")
    if ada_min==1:
        print("minimum")
    if ada_max==0 and ada_min==0:
        print("N#A")