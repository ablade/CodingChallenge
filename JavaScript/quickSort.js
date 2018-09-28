
function quickSort(a) {
  qSortRecursive(a,0,a.length-1);
}

function qSortRecursive(a,start,stop){
  if(start < stop){
    var boundary = partition(a,start,stop);
    qSortRecursive(a,start,boundary-1);
    qSortRecursive(a,boundary+1,stop)
  }
}

function partition(a,start,stop){
  var pivot = a[start];
  var left = start + 1;
  var right = stop;
  var done = false;
  var count = 0;
  while(!done)
  {
    count++;
    while(left <= right && a[left] <= pivot)
      left++;

    while(right >= left && a[right] >= pivot)
      right--;

    if(left >= right){
      done = true;
    }else{
      [a[left],a[right]] = [a[right],a[left]];
    }

    if(count > 15)
    {
      break;
    }
  }

  [a[start],a[right]] = [a[right],a[start]];
  return right;
}


mya = [23,45,1,2,-34,236,-11,4,25,-72,-1000,67,2,-34,45,78];
quickSort(mya);
console.log(mya);
