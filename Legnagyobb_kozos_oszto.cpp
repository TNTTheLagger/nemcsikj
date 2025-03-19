#include <iostream>
using namespace std;
int main ()
{
int a,b,c;
cout << "Legnagyobb kozos oszto: \n";
cin >> a;
cin >> b;

if (a>b)
{
c=a;
a=b;
b=c;
}
{
c=a;
while ((a%c != 0) or (b%c != 0))
{
      c--;
      }


}
if (c==1)  cout << "A ket szam (" << a << ";"  << b << ") egymashoz relativ prim" << endl ;
    else  cout << "LNKO: " << c << endl;
cout << " Vege a programnak!\n ";
}

