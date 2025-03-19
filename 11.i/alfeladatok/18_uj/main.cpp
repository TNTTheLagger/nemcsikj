#include <iostream>
#include <cmath>

using namespace std;

bool szerkesztheto(double a,double b,double c)
{
    double d;
    if(a+b>c && a+c>b && b+c>a)
        return true;
        else
            return false;
}
int main()
{
    double x,y,z;
    int d;
    cout<<"Haromszog egyik oldala:";
    cin>>x;
    cout<<"Haromszog masik oldala:";
    cin>>y;
    cout<<"Haromszog harmadik oldala:";
    cin>>z;
    if(szerkesztheto(x,y,z) == true)
        cout << "A haromszog szerkesztheto!";
    else
        cout << "A haromszog nem szerkesztheto!";
    return 0;
}
