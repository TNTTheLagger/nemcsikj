#include <iostream>

using namespace std;

int main()
{
    int x,y;
    char waitInput;
    for(x=1;x<=10;x++)
    {
     for(y=1;y<=10;y++)
            {
                cout<<"\t"<<(x*y);
            }
             cout<<endl<<endl;
    }
    cin>>waitInput;
    return 0;
}
