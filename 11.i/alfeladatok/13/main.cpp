#include <iostream>
#include <locale>

using namespace std;


int minimum(int szam[7])
{
    int i, min=szam[0];
for(i=0;i<7;i++)
    {
    if(min>szam[i])
        min=szam[i];
    }
    return (min);
}
int main()
{
    setlocale(LC_ALL,"HUN");
int i, sz[7];
cout<<"Adja meg a h�t minim�lis h�m�rs�klet adatait!"<<endl;
for(i=0;i<7;i++)
    {
    cout<<i+1<<". nap: ";
    cin>>sz[i];
    }
cout<<"\nA h�t legalacsonyabb h�m�rs�klete: "<<minimum(sz)<<"�C"<<endl;
cin.get();
return (0);
}
