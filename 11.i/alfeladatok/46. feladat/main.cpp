#include <iostream>
#define _USE_MATH_DEFINES
#include <math.h>

using namespace std;

float ker(float r)
{
    float z;
    z=(2*r)*(M_PI);
    return(z);
}

float ter(float k)
{
    float y;
    y=k*k*(M_PI);
    return(y);
}

int main()
{
    float d;
    cout<<"Kerem adja meg az atmerot: ";
    cin>>d;
    cout<<ker(d)<<" cm"<<endl;
    cout<<ter(d)<<" cm^2"<<endl;

}
