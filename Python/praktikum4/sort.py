
def get_max(arr, index_start):
    # mendapatkan maksimum array dari indeks indeks_start sampai selesai
    max=-9999
    for i in range(index_start,len(arr)):
        if arr[i]>max:
            max=arr[i]
    return max

def get_idx(arr, number):
    for i in range(len(arr)):
        if arr[i]==number:
            return i
   # mendapatkan index dari suatu angka dalam array

def swap(array, indeks_1, indeks_2):
    array[indeks_1],array[indeks_2]=array[indeks_2],array[indeks_1]
  # swap elemen array indeks 1 dengan indeks 2

def sort(arr):
    for i in range(len(arr)):
        maxArr = get_max(arr, i)
        maxIdx = get_idx(arr, maxArr)
        swap(arr, i, maxIdx)  
    print(arr)

#Program Utama
n=int(input())
arr=[]
for j in range(n):
    angka=int(input())
    arr.append(angka)
sort(arr)