#include <iostream>

using namespace std;

int valaszt(int a)
{
    int r;
    if(a%2==1)
        cout<<"paratlan";
    else
        cout<<"paros";
    return(r);
}

int main()
{
    int szam, b;
    cout<<"kerem adja meg a szamot"<<endl;
    cin>>b;
    valaszt(b);
    return 0;

}
