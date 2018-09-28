
#include <stdio.h>
#define SIZE_OF_ARRAY 13

int partition(int* a,int start, int stop)
{
  int pivot = a[start];
  int lft = start + 1;
  int rgt = stop;
  bool done = false;
  while(!done){
    while(lft <= rgt && a[lft] <= pivot)
      lft++;

    while(rgt >= lft && a[rgt] >= pivot)
      rgt--;

    if(lft > rgt)
      done = true;
    else{
      int temp = a[lft];
      a[lft] = a[rgt];
      a[rgt] = temp;
    }
  }
  a[start] = a[rgt];
  a[rgt] = pivot;
  return rgt;
}

void rQSort(int* a,int start, int stop)
{


  if(start < stop)
  {
    int boundary = partition(a,start,stop);
    rQSort(a,start,boundary-1);
    rQSort(a,boundary+1,stop);
  }
}

void quickSort(int* a){
  rQSort(a,0,13);
}


int main()
{
  int arr[SIZE_OF_ARRAY] = {4,-2,34,1,4,-54,-76,1000,67,-23,56,12,90};
  for(int i = 0; i < 13; i++){
    printf("%d, ", arr[i]);

  }
  printf("\n Sorting \n");
  quickSort(arr);
  for(int i = 0; i < 13; i++){
    printf("%d, ", arr[i]);
  }
  return 0;

}
