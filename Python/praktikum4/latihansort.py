a=[12,1,2,3,100,102,101,4,5,5,4,3,2,1,11,22,33,23,22,33,11,22,11,11,33,1]

#selection sort 
def selection_sort(a):
    for i in range(len(a)-1):
        indeks_min=i
        for j in range(i,len(a)):
            if a[indeks_min]>a[j]:
                indeks_min=j
        a[i],a[indeks_min]=a[indeks_min],a[i]
    return a

#insertion sort
def insertion_sort(a):
    for i in range(1,len(a)):
        data_yang_di_sort=a[i]
        for j in range(i):
            if a[j]>data_yang_di_sort:
                for jj in range(i,j,-1):
                    a[jj]=a[jj-1]
                a[j]=data_yang_di_sort
                break
    return a

#bubble sort
def bubble_sort(a):
    for i in range(len(a)-1):
        tukar=False
        for j in range(len(a)-1,i,-1):
            if a[j]<a[j-1]:
                tukar=True
                a[j],a[j-1]=a[j-1],a[j]
        if not tukar:
            break
    return a

s=selection_sort(a)
i=insertion_sort(a)
b=bubble_sort(a)
print(s)
print(i)
print(b)