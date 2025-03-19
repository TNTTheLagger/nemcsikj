#include <iostream>
using namespace std;

int main ()
{
int k[21],i,t;
cout <<"Decimalisbol binarisba valtok! \n";
cin >> t;
i=1;
while (t!=0)
{
 if (t%2==0)
        {
        k[i]=0;
        i++;
        }
    else
        {
        k[i]=1;
        i++;
        t=t-1;
}
 t=t/2;
}
cout << t << "\n";
while (i!=1)
{
      i=i-1;
cout << k[i];
}
cout << "    Az algoritmus sikeresen lefutott. Kerem nyomjon meg egy gombot... \n";

}



