#include <iostream>

using namespace std;

double osszeg(double szamok[])
{
    double Osszeg = 0;
    for(int i = 0;i < 10;i++)
    {
        Osszeg = Osszeg + szamok[i];
    }
    return Osszeg;
}

int main()
{
    setlocale(LC_ALL, "");
    double Szamok[10];
    cout << "�rjon be 10 sz�mot!" << endl;
    for(int i = 0;i < 10;i++)
    {
        cin >> Szamok[i];
    }
    cout << "A t�z be�rt sz�m �sszege: " << osszeg(Szamok) << endl;
    return 0;
}
