
def left(i):
    return i << 1

def right(i):
    return (i << 1)+ 1

def parent(i):
    if i <= 1:
        return 1
    else:
        return i >> 1

def max_heapify(array,lvi,index):
    l = left(index)
    r = right(index)
    largest = index

    if l < lvi and array[l] > array[largest]:
        largest = l

    if r < lvi and array[r] > array[largest]:
        largest = r

    if largest != index:
        array[largest],array[index] = array[index],array[largest]
        max_heapify(array,lvi,largest)


def build_max_heap(array):
    low_half = len(array) >> 1
    for i in range(low_half,0,-1):
        max_heapify(array,len(array),i)


def max_heap_sort(array):
    build_max_heap(array)
    last_index = len(array)-1
    for i in range(last_index,1,-1):
        array[i],array[1] = array[1],array[i]
        max_heapify(array,i-1,1)


l = [-4,9,4,2,3,67,54,-66,0,0,0,32,45,-12,-13,-56]
max_heap_sort(l)
print(l)
