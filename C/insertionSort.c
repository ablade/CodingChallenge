
#include <stdio.h>


int insertionSort(int a[], int len)
{
    int i;
    for(i=1; i < len; i++)
    {
      int iptr = i;
      int cptr = i-1;
      int val = a[i];
      while(iptr)
      {
        if(val < a[cptr])
        {
          a[iptr] = a[cptr];
          iptr--;
          cptr--;
        }else
        {
          a[iptr] = val;
          break;
        }
      }
      if(iptr==0)
      {
        a[0] = val;
      }
    }

}

int main()
{
  #define SIZE_OF_ARRAY 13
  int i;
  int arr[SIZE_OF_ARRAY] = {4,-2,34,1,4,-54,-76,1000,67,-23,56,12,90};
  printf("insert sort\n");
  insertionSort(arr, SIZE_OF_ARRAY);
  for(i=0; i < 13; i++)
  {
    printf("%d, ",arr[i]);
  }
  printf("\nDone!!!");
  return 0;
}
