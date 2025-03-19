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
    cout << "Írjon be 10 számot!" << endl;
    for(int i = 0;i < 10;i++)
    {
        cin >> Szamok[i];
    }
    cout << "A tíz beírt szám összege: " << osszeg(Szamok) << endl;
    return 0;
}
