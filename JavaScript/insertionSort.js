

function insertionSort(a){
  for(var i=1; i < a.length; i++)
  {
    var iptr = i;
    var cptr = i-1;
    var val = a[i];

    while(iptr)
    {
      if(val < a[cptr])
      {
        a[iptr] = a[cptr];
        iptr--;
        cptr--;
      }else {
        a[iptr] = val;
        break;
      }
    }

    if(iptr == 0)
    {
      a[iptr] = val;
    }
  }
}

var mya = [23,45,1,2,-34,236,-11,4,25,-72,-1000,67,2,-34,45,78];
insertionSort(mya);
console.log(mya);
