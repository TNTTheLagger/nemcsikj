#include <iostream>
#include <locale>

using namespace std;


int evszak(int szam)
{
if(szam>=3 && 5>=szam)
    cout<<"Tavasz";
else
    if(szam>=6 && 8>=szam)
    cout<<"Nyár";
else
    if(szam>=9 && 11>=szam)
    cout<<"Õsz";
else
    if(szam=12 && szam>=1 && szam <=2)
    cout<<"Tél";
else
    cout<<"Nem megfelelõ szám!";
}
int main()
{
    setlocale(LC_ALL,"");
    int honap;
cout<<"Adja meg a hónapot!"<<endl;
cin>>honap;

cout<<"\nAz adott hónap ";
evszak(honap);
    return 0;

}
