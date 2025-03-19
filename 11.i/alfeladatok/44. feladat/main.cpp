#include <iostream>

using namespace std;

double hatv(double a, double b)
{
    double r;
    r=a*b;
    return(r);
}

int main()
{
    double z=1;
    cout<<"2^30: " << endl;
    for(int n=1;n<31;n++)
    {
        z=hatv(z,2);
        cout << z << endl;
    }
    return 0;
}
