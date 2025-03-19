#include <iostream>
#include <cmath>

using namespace std;

void szerkesztheto(double a,double b,double c)
{
    if(a+b>c && a+c>b && b+c>a)
    cout<<"Szerkeszthetoseg: Szerkesztheto";
    else
        cout<<"Szerkeszthetoseg: Nem szerkesztheto";
}
int main()
{
    double x,y,z;
    cout<<"Haromszog egyik oldala:";
    cin>>x;
    cout<<"Haromszog masik oldala:";
    cin>>y;
    cout<<"Haromszog harmadik oldala:";
    cin>>z;
    szerkesztheto(x,y,z);
    return 0;
    cin.get();
}
