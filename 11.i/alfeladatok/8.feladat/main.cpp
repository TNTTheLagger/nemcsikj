#include <iostream>

using namespace std;
void atlag(double z)
{
    double atl;
    atl=z/10;
    cout<<"Az ön szamainak atlaga: "<<atl;
}
int main()
{
    int x,y=0;
    for(int i=1;i<11;i++)
        {
        cin>>x;
        y=y+x;
        }
        atlag(y);


}
