#include <iostream>

using namespace std;
void megoldas(double x,double y, double z)
{
    double m;
    m=y*y-(4*x*z);
    if(m<0)
        cout<<"A megoldasok szama: 0";
        if(m==0)
            cout<<"A megoldasok szama: 1";
        else
            cout<<"A megoldasok szama: 2";

}

int main()
{
    int a,b,c;
    cout<<"a= ";
    cin>>a;
    cout<<"b= ";
    cin>>b;
    cout<<"c= ";
    cin>>c;
    megoldas(a,b,c);
    cin.get();
    return 0;

}
