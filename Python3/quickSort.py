
def quickSort(a):
    recursiveQuickSort(a,0,len(a)-1)

def recursiveQuickSort(a,first,last):
    if first < last :
        boundary = partition(a,first,last)
        recursiveQuickSort(a,first,boundary-1)
        recursiveQuickSort(a,boundary+1,last)


def partition(a,first,last):
    pivot = a[first]
    left = first+1
    right = last

    done = False
    while not done:
        while left <= right and a[left] <= pivot :
            left += 1
        while right >= left and a[right] >= pivot :
            right -=1

        if left > right :
            done = True
        else :
            a[left],a[right] = a[right],a[left]

    a[first],a[right] = a[right],a[first]

    return right


alist = [54,26,93,17,77,31,44,55,20]
quickSort(alist)
print(alist)
