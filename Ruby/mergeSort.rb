def mergeSort(arr)
  #puts "ARR : #{arr}"
  alen = arr.length
  mid = alen / 2
  # left = Array.new(arr[0..mid-1])
  # right = Array.new(arr[mid .. -1])
  left = arr[0..mid-1]
  right = arr[mid .. -1]
  # if left != nil then
  #   puts "LEFT : #{left}"
  # end
  #
  # if right != nil then
  #   puts "RIGHT : #{right}"
  # end

  if left.length > 1 then left = mergeSort(left) end

  if right.length > 1 then right = mergeSort(right) end

  res = []
  while not (left.empty? or right.empty?)  do
    if left[-1] > right[-1] then
      res.push(left.pop)
    else
      res.push(right.pop)
    end
  end

  # if left.empty? then
  #   return right + res.reverse!
  # else
  #   return left + res.reverse!
  # end
  return left + right + res.reverse!
end

arr = [6,2,87,-1,-3,0,1,1,-3,-43,23,67,56]


print mergeSort(arr)
