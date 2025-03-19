#include <iostream>
#include <stdlib.h>
 
using namespace std;
 
int HanySzobolAll(string Szoveg);
 
int main()
{
    setlocale(LC_ALL, "");
    cout << "�rjon be egy sz�veget �s ez a csod�latos program megmondja h�ny sz�b�l �ll!" << endl;
    string szoveg;
    getline(cin, szoveg);
    int szoSzam = HanySzobolAll(szoveg);
    cout << "A sz�veg " << szoSzam << " sz�b�l �ll!" << endl;
    return 0;
}
 
int HanySzobolAll(string Szoveg)
{
    int szoSzam = 0;
    for(int i = 0;i < Szoveg.length();i++)
    {
        if(isspace(Szoveg[i]))
            szoSzam++;
    }
    return szoSzam + 1;
}