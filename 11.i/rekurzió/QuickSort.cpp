// QUICKSORT.CPP
#include <iostream>
using namespace std;

void QuickSort(int tomb[], int n);

int main()
{
  const int N = 12;
  int m[N] = {123, 12, 34, 32, 1, 2, -3, 23, 79, 0, -7,-19};
  int i;
  cout<<"\n A rendezetlen tomb elemei :\n";
  for (i=0; i<N; i++)
    cout<<m[i]<<" ";
  cout<<endl;

  QuickSort(m, N);

  cout<<"\n A rendezett tomb elemei :\n";
  for (i=0; i<N; i++)
    cout<<m[i]<<" ";
  cout<<endl;

  cin.get();
  return 0;
}

void QSort(int tomb[], int kindex, int vindex)
{
      int fixelem, selem;
      int bindex,  jindex;

      bindex = kindex;
      jindex = vindex;
      fixelem = tomb[(kindex + vindex) / 2];

      do {
        // a fixelemtõl balra alló elemek közül keressük az elsõ nagyobbat 
        while (tomb[bindex] < fixelem)
          bindex++;
        // a fixelemtõl jobbra alló elemek közül keressük az elsõ kisebbet 
        while (fixelem < tomb[jindex])
          jindex--;
        // a megtalált elemeket felcseréljük 
        if (bindex <= jindex) {
             selem          = tomb[bindex];
             tomb[bindex++] = tomb[jindex];
             tomb[jindex--] = selem;
         }
      } while (bindex <= jindex);

      if (kindex < jindex)
        QSort(tomb, kindex, jindex);

      if (bindex < vindex)
        QSort(tomb, bindex, vindex);
}

void QuickSort(int tomb[], int n)
{
   QSort(tomb, 0, n-1);
}

