
def insertionSort(a):
    for i in range(1,len(a)):
        iptr = i
        cptr = i - 1
        val = a[i]
        while cptr >= 0:
            if val < a[cptr]:
                a[iptr] = a[cptr]
                iptr -= 1
                cptr -= 1
            else:
                a[iptr] = val
                break

        if cptr < 0 :
            a[0] = val


alist = [-45, -123, 0, 23, 12, 99, 6789, 12, -6543, 23, 45, 45, 987, 123]
insertionSort(alist)
print(alist)
