#include <cstdlib>
#include <iostream>

using namespace std;


int sum(int szam)
{
   int b=0;
    for(int i=1;i<=szam;i++)
    {
    b=b+i;
                         }
                         return b;
}

int main(int argc, char *argv[])
{
    int waitInput;
    int szam;
    cout<<"Add meg a szamot!\n";
    cin>>szam;
    int ossz=sum(szam);
    cout<<("%d\n",ossz);
    cin>>waitInput;
    return 0;
}
