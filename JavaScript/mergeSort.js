
function mergeSort(a){
  var mid = Math.floor(a.length / 2);
  var lft = a.slice(0,mid);
  var rgt = a.slice(mid,a.length);
  //console.log(lft);
  //console.log(rgt);
  if(lft.length > 1)
    lft = mergeSort(lft);
  if(rgt.length > 1)
    rgt = mergeSort(rgt);

  var r = [];
  //console.log("LLEN : " + lft.length + " RLEN : " + rgt.length
  //TODO: Why doesn't it enter this loop?
  while( lft.length > 0 && rgt.lenth > 0)
  {
    //console.log("lft : " + lft.slice(-1) + " rgt : " + rgt.slice(-1))
    if(lft.slice(-1) > rgt.slice(-1))
    {
      r.push(lft.pop());
    }else{
      r.push(rgt.pop())
    }
  }

  r.reverse();
  var ret = lft.concat(rgt.concat(r));
  //console.log("WE RETURNED : " + ret);
  return ret;
}


mya = [23,45,1,2,-34,236,-11,4,25,-72,-1000,67,2,-34,45,78];
//mergeSort(mya);
console.log(mergeSort(mya));
