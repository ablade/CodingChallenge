
def mergeSort(a):
    mid = len(a) // 2
    lft, rgt = a[:mid],a[mid:]
    if len(lft) > 1 : lft = mergeSort(lft)
    if len(rgt) > 1 : rgt = mergeSort(rgt)
    res = []
    while lft and rgt:
        if lft[-1] > rgt[-1]:
            res.append(lft.pop())
        else :
            res.append(rgt.pop())
    res.reverse()
    return (lft or rgt) + res


alist = [-3,5,-1,-3,45,23,1500,103,78,34,56,98]
print(mergeSort(alist))
