#include <iostream>
#include <cmath>

using namespace std;

int main(void)
 {
    int a;
    int b=1;

   cout << "Szam: ";
   cin >> a;

   for ( b = a / 2; b >= 2 && a % b != 0; --b )
    ;
  if ( b <= 1 )
    cout <<"prim." ;
  else
    cout<<"a szam legnagyobb valodi osztoja:" << b;

   return 0;
 }
