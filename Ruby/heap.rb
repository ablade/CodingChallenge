
def Parent(i)
  return i >> 1
end

def Left(i)
  return i << 1
end

def Right(i)
  return (i << 1) + 1
end

def max_heapify(a,sz,i)
  #sz is the last index allowed in a zero index array
  #the zeroth index isn't used and could store a flag for max or min heap
  l = Left(i)
  r = Right(i)
  largest = i
  #puts "left #{l} and right #{r} and size #{sz}"
  if l < sz && a[l] > a[i]
    largest = l
  end
  if r < sz && a[r] > a[largest]
    largest = r
  end
  if largest != i
    t = a[i]
    a[i] = a[largest]
    a[largest] = t
    max_heapify(a,sz,largest)
  end
end

def build_max_heap(a)
  #We build starting from the lowest parent hence length / 2
  half = a.length / 2
    #puts "Iniside build max heap #{half}"
  for i in half.downto(1) #i only goes to 1, index 0 is not valid
    #puts "EYE is #{i}"
    max_heapify(a,a.length,i)
  end
end

def heapSort(a)
  s = a.length-1
  al = s-1
  for i in al.downto(2)
    t = a[s]
    a[s] = a[1] #Place largest at the end
    a[1] = t
    s -=1
    #puts "S is #{s} and i is #{i}"
    max_heapify(a,s,1)
  end
end

  array = [0,5,7,2,-11,0,2,34,-3,4,67,-21]
  puts "ORIGINAL : #{array}"
  build_max_heap(array)
  puts "MAX HEAP : #{array}"
  heapSort(array)
  puts "SORTED   : #{array}"
