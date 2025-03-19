#include <iostream>

using namespace std;

int szorzas(int a, int b,int c,int d,int e,int f,int g,int h ,int i,int j)
{
    int r;
    r=a*b*c*d*e*f*g*h*i*j;

    return (r);
}
int main()
{
    int a, b, c, d, e, f, g, h, i, j;
    cin>> a;
    cin>> b;
    cin>> c;
    cin>> d;
    cin>> e;
    cin>> f;
    cin>> g;
    cin>> h;
    cin>> i;
    cin>> j;
    cout<< "A szamok szorzata: ";
    cout<<szorzas(a, b, c, d, e, f, g, h ,i, j);
    cin.get();
    return 0;
}
