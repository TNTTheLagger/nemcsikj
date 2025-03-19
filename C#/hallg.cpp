// hallg.cpp: hallgat�k adatait list�z� program
// L�vei L�szl�, 2004.04.24

#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

using namespace std;

// A hallgat�k adatai sz�veges f�jlb�l olvassa be a program. A f�jl
// sorainak szerkezete:
//    Hallgato Neve, Szuletesi hely, ����.HH.NN
// Ezeket az adatoakt t�rolja a k�vetkez� strukt�ra.

struct Hallgato {
    string nev;
    string szul_hely;
    int szul_ev, szul_ho, szul_nap;
};

// Beolvas� �s ki�r� oper�torok deklar�ci�ja
istream& operator >> (istream& is, Hallgato& h);
ostream& operator << (ostream& os, Hallgato h);

// A f�program beolvassa �s sorsz�mozva ki�rja a hallgat�k adatait a
// hallgato.txt f�jlb�l

int main()
{
    ifstream inf("hallgato.txt");
    Hallgato hallg;

    int i=1;    // sz�ml�l�
    
    // A beolvas� oper�tor szok�s szerint a streamet adja vissza, amit
    // felt�telk�nt haszn�lhatunk az inf.good() helyett

    while (inf >> hallg)        
    {
        cout << i << ". " << hallg << endl;
        ++i;
    }

    return 0;
}

// Beolvas� oper�tor
istream& operator >> (istream& is, Hallgato& h)
{
    getline(is, h.nev, ',');            // N�v, vessz�vel lez�rva
    is >> ws;                           // A vessz� ut�ni sz�k�z felesleges
    getline(is, h.szul_hely, ',');      // Sz�let�si hely a vessz�ig
    
    // Ezut�n a sz�let�si d�tum j�n, a bevezet� sz�k�z�ket a sz�mbeolvas�s
    // automatikusan �tugorja
    char pont;                  // A sz�mok k�zti pontot le kell nyelni
    is >> h.szul_ev >> pont     // ����.
       >> h.szul_ho >> pont     // HH.
       >> h.szul_nap >> ws;     // NN, majd a sorv�ge jel lenyel�se

    // A beolvas� oper�tor mindig a streamet adja vissza
    return is;
}

// Ki�r� oper�tor
ostream& operator << (ostream& os, Hallgato h)
{
    // A ki�rt alak: Hallgat� Neve (szul. Hely, ����-HH-NN)
    os << h.nev << " (szul. "           // A n�v ut�n z�r�jelben a sz�let�s
        << h.szul_hely << ", "          // hely,
        << h.szul_ev << '-'             // ����-
        << setfill('0')                 // egyjegy� h�nap, nap 0-val kezd�dik
        << setw(2) << h.szul_ho << '-'  // HH-
        << setw(2) << h.szul_nap << ')' // NN)
        << setfill(' ');                // Vissza�ll�tjuk az eredeti �llapotot

    // A ki�r� oper�tor mindig a streamet adja vissza
    return os;
}
