

function Heap(array){
  this.data = [];
  for(var i=0; i < array.length; i++)
  {
    this.data[i+1] = array[i];
  }
}

Heap.prototype.val = function(i) {
   return this.data[i];
}

Heap.prototype.Parent = function(i)
{
  if(i <=1)
    return 1;
  else
    return i >> 1;
}

Heap.prototype.Left = function(i)
{
  if(i < 1)
    return 1;
  else
    return i << 1;
}

Heap.prototype.Right = function(i){
  if(i < 1)
    return 1;
  else
    return (i<<1) + 1;
}

Heap.prototype.getNodeValue = function (i) {

  return this.data[i];

}

Heap.prototype.max_heapify = function(last_valid_index, i){
  var l_index = this.Left(i);
  var r_index = this.Right(i);
  var largest = i;
  if( l_index < last_valid_index && this.data[l_index] > this.data[i]){
    largest = l_index;
  }

  if( r_index < last_valid_index && this.data[r_index] > this.data[largest]){
    largest = r_index;
  }

  if(largest != i)
  {
    var temp = this.data[i];
    //console.log(`Swapping A[${largest}] = ${this.data[largest]} and A[${i}] = ${this.data[i]}`);
    this.data[i] = this.data[largest];
    this.data[largest] = temp;
    this.max_heapify(last_valid_index,largest);
  }
}

Heap.prototype.build_max_heap = function(){
  var low_to_root = Math.floor(this.data.length / 2);
  for(var i = low_to_root; i >= 1; i--)
  {
      //console.log(`max_heapify ${i}`);
      this.max_heapify(this.data.length,i);
  }
}

Heap.prototype.heapSort = function() {
  this.build_max_heap();
  var sz = this.data.length-1;

  for(var i = sz; i >= 2; i--)
  {
      var temp = this.data[1];
      this.data[1] = this.data[i];
      this.data[i] = temp;
      sz--;
      //console.log(`Before ${i} MAX HEAPIFY ${this.data[i]}`);
      this.max_heapify(sz,1);
  }
}
//Take a list of array and copy it to the heap array
var a = [89,-12,65,0,23,12,-87,34,-12,-891,2,39,-10,11];
console.log("ORIGINAL : " + a);
var myh = new Heap(a);
//myh.build_max_heap();
myh.heapSort();
console.log("SORTED   : " + myh.data);
//console.log(myh.getNodeValue(myh.Right(1)));
