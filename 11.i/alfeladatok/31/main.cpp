#include <iostream>
#include <locale>

using namespace std;


int evszak(int szam)
{
if(szam>=3 && 5>=szam)
    cout<<"Tavasz";
else
    if(szam>=6 && 8>=szam)
    cout<<"Ny�r";
else
    if(szam>=9 && 11>=szam)
    cout<<"�sz";
else
    if(szam=12 && szam>=1 && szam <=2)
    cout<<"T�l";
else
    cout<<"Nem megfelel� sz�m!";
}
int main()
{
    setlocale(LC_ALL,"");
    int honap;
cout<<"Adja meg a h�napot!"<<endl;
cin>>honap;

cout<<"\nAz adott h�nap ";
evszak(honap);
    return 0;

}
