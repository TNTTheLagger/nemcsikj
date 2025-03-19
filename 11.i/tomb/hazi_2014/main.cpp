#include <iostream>
#include <fstream>
#include <vector>
#include <limits.h>
#include <cmath>

using namespace std;

vector<int> fokok;
double AtlagHo();
int MinHo();
int Hoingas();
int hanyFagyas();
void Consolera();
void RendezveKi();
int MasodikLegHid();

int main()
{
    setlocale(LC_ALL, "");
    ifstream fajlBe;
    fajlBe.open("fokok.txt");
    if(fajlBe.good())
        cout << "A fájlt sikeresen beolvastuk!\n" << endl;
    else
    {
        cout << "A fájl beolvasása sikertelen, a program kilép!" << endl;
        return 1;
    }

    int temp;
    while(!fajlBe.eof())
    {
        fajlBe >> temp;
        fokok.push_back(temp);
    }

    cout << "Az átlaghõmérséklet a hónapban " << AtlagHo() << " volt.\n";
    cout << "A legalacsonyabb hõmérséklet: " << MinHo() << endl;
    cout << "A legnagyobb hõingás a " << Hoingas() << ". és a " << Hoingas() + 1 << ". napok között volt.\n";
    cout << "Fagyások száma: " << hanyFagyas() << endl;
    cout << MasodikLegHid();
    Consolera();
    RendezveKi();

    return 0;
}


double AtlagHo()
{
    int osszeg;
    for(int i = 0;i < fokok.size();i++)
    {
        osszeg += fokok[i];
    }
    return osszeg / fokok.size();
}

int MinHo()
{
    int currMin = INT_MAX;
    for(int i = 0;i < fokok.size();i++)
    {
        if(fokok[i] < currMin)
            currMin = fokok[i];
    }
    return currMin;
}

int Hoingas()
{
    int melyikNap = 0;
    int maxHoingas = 0;
    for(int i = 1;i < fokok.size();i++)
    {
        if(abs(fokok[i] - fokok[i - 1]) > maxHoingas)
        {
            maxHoingas = abs(fokok[i] - fokok[i - 1]);
            melyikNap = i;
        }
    }
    return melyikNap;
}

int hanyFagyas()
{
    int hany = 0;
    for(int i = 0;i < fokok.size();i++)
    {
        if(fokok[i] < 0)
            hany++;
    }
    return hany;
}


int MasodikLegHid()
{
    int elso = MinHo();
    vector<int> temp2;
    int temp = 0;
    for(int i = 0;i < fokok.size();i++)
    {
        if(elso == fokok[i])
            continue;
        else
        {
            temp = elso - fokok[i];
            temp2.push_back(temp);
        }
    }
    int masodik = INT_MAX;
    int masodikSzama = 0;
    for(int j = 0;j < temp2.size();j++)
    {
        if(temp2[j] < masodik)
        {
            masodik = temp2[j];
            masodikSzama = j;
        }

    }
    return masodikSzama;
}

void Consolera()
{
    cout << "\nA tömb elemei: " << endl;
    for(int i = 0;i < fokok.size();i++)
        cout << i + 1 << ". nap: " << fokok[i] << " °C" << endl;
}

void RendezveKi()
{
    int temp = 0;
    for(int i = 0;i < fokok.size();i++)
    {
        for(int j = 0;j < fokok.size();j++)
        {
            if(fokok[i] < fokok[j])
            {
                temp = fokok[i];
                fokok[i] = fokok[j];
                fokok[j] = temp;
            }
        }
    }
    cout << "\nA rendezett tömb:" << endl;
    Consolera();
}
