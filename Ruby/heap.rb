
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

def increasingHeapSort(a)
  s = a.length-1
  al = s-1
  for i in a.length.downto(2)
    t = a[s]
    a[s] = a[1] #Place largest at the end
    a[1] = t
    s -=1
    #puts "S is #{s} and i is #{i}"
    max_heapify(a,s,1)
  end
end

def min_heapify(the_array, the_last_valid_index, node_index)
  a = the_array
  lvi = the_last_valid_index
  i = node_index
  l = Left(i)
  r = Right(i)
  smallest = i
  if l <= lvi and a[l] < a[smallest]
    smallest = l
  end
  if r <= lvi and a[r] < a[smallest]
    smallest = r
  end
  if smallest != i
    temp = a[i]
    a[i] = a[smallest]
    a[smallest] = temp
    min_heapify(a,lvi,smallest)
  end
end

def build_min_heap(the_array)

  low_half = the_array.length / 2
  for i in low_half.downto(1)
    min_heapify(the_array,the_array.length-1,i)
  end
end

def decreasingHeapSort(the_array)
  build_min_heap(the_array)

  last_valid_ptr = the_array.length - 1

  for does_not_matter in the_array.length.downto(2)
    #swap the first with the last and min_heapify
    t = the_array[last_valid_ptr]
    the_array[last_valid_ptr] = the_array[1]
    the_array[1] = t
    last_valid_ptr -= 1
    min_heapify(the_array,last_valid_ptr,1)
  end


end


  array1 = [0,5,7,2,-11,0,2,34,-3,4,67,-21]
  array2 = [0,5,7,2,-11,0,2,34,-3,4,67,-21]
  puts "ORIGINAL : #{array1}"
  build_min_heap(array1)
  puts "MIN HEAP : #{array1}"
  decreasingHeapSort(array1)
  puts "H SORTING : #{array1}"
  build_max_heap(array2)
  puts "MAX HEAP : #{array2}"
  increasingHeapSort(array2)
  puts "SORTED   : #{array2}"
