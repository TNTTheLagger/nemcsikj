#include <iostream>
using namespace std;
int main ()
{
    unsigned long long f,n,i;
    
    
    cout << "Faktorialis szamolo. \n";
         f=1;
         cin >> n;
         i = n;
         do
         {
               f = f * i;
               i--;
         }
         while (i!=0);
         cout << "A (z) " << n <<". faktorialis erteke: "<< f << "\n";

         
         system ("pause");
}
