
import java.io.*;

import javax.print.attribute.standard.MediaSize.ISO;

public class insertionSort {

    public static void main(String[] args) {

        // Prints "Hello, World" to the terminal window.
        int a[] = {21,45,-12,-1,-56,-2,54,98,-2,-12,-78,78,11};
        iSort(a);
        for(int i=0; i<a.length; i++)
        {
            System.out.print(a[i] + ", ");
        }
    }

    public static int[] iSort(int[] a)
    {
      for(int i = 1; i < a.length; i++)
      {
        int iptr = i; 
        int cptr = i -1;
        int val = a[i];

        while(iptr > 0)
        {
            if(val < a[cptr]){
                a[iptr] = a[cptr];
                iptr--;
                cptr--;
            }else
            {
                break;
            }
        }

        a[iptr] = val;
      }
      return a;
    }

}
