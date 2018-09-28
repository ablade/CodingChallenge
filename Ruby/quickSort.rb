def quickSort(a)
  qSortR(a,0,a.length-1)
end

def qSortR(d,start,stop)
  if start < stop then
    boundary = partition(d,start,stop)
    qSortR(d,start,boundary-1)
    qSortR(d,boundary+1,stop)
  end
end

def partition(d,start,stop)
  pivot = d[start]
  left = start + 1
  right = stop
  done = false

  while not done do
    while left <= right and d[left] <= pivot do
      left += 1
    end

    while right >= left and d[right] >= pivot do
      right -= 1
    end

    if left > right then
      done = true
    else
      temp = d[left]
      d[left] = d[right]
      d[right] = temp
    end
  end


  d[start] = d[right]
  d[right] = pivot

  return right
end

arr = [6,2,87,-1,-3,0,1,1,-3,-43,23,67,56]
puts
quickSort(arr)
print(arr)
