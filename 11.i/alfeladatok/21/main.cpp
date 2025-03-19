#include <iostream>
#include <stdlib.h>
 
using namespace std;
 
int HanySzobolAll(string Szoveg);
 
int main()
{
    setlocale(LC_ALL, "");
    cout << "Írjon be egy szöveget és ez a csodálatos program megmondja hány szóból áll!" << endl;
    string szoveg;
    getline(cin, szoveg);
    int szoSzam = HanySzobolAll(szoveg);
    cout << "A szöveg " << szoSzam << " szóból áll!" << endl;
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