
#include <stdio.h>
#include <string.h>

int mergeSort(int* a, int len)
{
  int i,j;
  int mid = len / 2;
  int llen = mid;
  int rlen = len - mid;
  int lft[mid];
  int rgt[len-mid];
  memcpy(lft, a, llen * sizeof(int));
  memcpy(rgt, a + llen, rlen * sizeof(int));
  if(llen > 1)
    mergeSort(lft, llen);

  if(rlen > 1)
    mergeSort(rgt,rlen);

  //We want to merge the two halfs
  //Can we merge inside a
  for(i=0,j=0; (i + j)< len; )// && j < rlen; i++, j++)
  {
    //We either finish rlen or llen
    if(i >= llen)
    {
      a[i+j] = rgt[j++];
      //a[i+j] = lft[i++];
      continue;
    }else if(j >= rlen)
    {
      a[i+j] = lft[i++];

      //a[i+j] = rgt[j++];
      continue;
    }

    if(lft[i] < rgt[j])
    {
      a[i+j] = lft[i++];
    }else
    {
      a[i+j] = rgt[j++];
    }
  }
  return 0;
}


int main()
{
  #define SIZE_OF_ARRAY 13
  int i;
  int arr[SIZE_OF_ARRAY] = {4,-2,34,1,4,-54,-76,1000,67,-23,56,12,90};
  printf("merge sort\n");
  mergeSort(arr, SIZE_OF_ARRAY);
  for(i=0; i < 13; i++)
  {
    printf("%d, ",arr[i]);
  }
  printf("\nDone!!!");
  return 0;
}
