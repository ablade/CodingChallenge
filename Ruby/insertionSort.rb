
def insertionSort(a)
  for i in 1..a.length-1
    insertPtr = i
    comparePtr = i-1
    val = a[i]
    while comparePtr >= 0 do
      if val < a[comparePtr] then
        a[insertPtr] = a[comparePtr]
        insertPtr -= 1
        comparePtr -= 1
      else
        #We found the right spot
        a[insertPtr] = val
        break
      end
    end

    if comparePtr < 0 then
      a[0] = val
    end
  end
end

array = [5,7,2,-11,0,2,34,-3,4,67,-21]
insertionSort(array)
puts "Sorted : #{array}"
