// hallg.cpp: hallgatók adatait listázó program
// Lövei László, 2004.04.24

#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>

using namespace std;

// A hallgatók adatai szöveges fájlból olvassa be a program. A fájl
// sorainak szerkezete:
//    Hallgato Neve, Szuletesi hely, ÉÉÉÉ.HH.NN
// Ezeket az adatoakt tárolja a következõ struktúra.

struct Hallgato {
    string nev;
    string szul_hely;
    int szul_ev, szul_ho, szul_nap;
};

// Beolvasó és kiíró operátorok deklarációja
istream& operator >> (istream& is, Hallgato& h);
ostream& operator << (ostream& os, Hallgato h);

// A fõprogram beolvassa és sorszámozva kiírja a hallgatók adatait a
// hallgato.txt fájlból

int main()
{
    ifstream inf("hallgato.txt");
    Hallgato hallg;

    int i=1;    // számláló
    
    // A beolvasó operátor szokás szerint a streamet adja vissza, amit
    // feltételként használhatunk az inf.good() helyett

    while (inf >> hallg)        
    {
        cout << i << ". " << hallg << endl;
        ++i;
    }

    return 0;
}

// Beolvasó operátor
istream& operator >> (istream& is, Hallgato& h)
{
    getline(is, h.nev, ',');            // Név, vesszõvel lezárva
    is >> ws;                           // A vesszõ utáni szóköz felesleges
    getline(is, h.szul_hely, ',');      // Születési hely a vesszõig
    
    // Ezután a születési dátum jön, a bevezetõ szóközöket a számbeolvasás
    // automatikusan átugorja
    char pont;                  // A számok közti pontot le kell nyelni
    is >> h.szul_ev >> pont     // ÉÉÉÉ.
       >> h.szul_ho >> pont     // HH.
       >> h.szul_nap >> ws;     // NN, majd a sorvége jel lenyelése

    // A beolvasó operátor mindig a streamet adja vissza
    return is;
}

// Kiíró operátor
ostream& operator << (ostream& os, Hallgato h)
{
    // A kiírt alak: Hallgató Neve (szul. Hely, ÉÉÉÉ-HH-NN)
    os << h.nev << " (szul. "           // A név után zárójelben a születés
        << h.szul_hely << ", "          // hely,
        << h.szul_ev << '-'             // ÉÉÉÉ-
        << setfill('0')                 // egyjegyû hónap, nap 0-val kezdõdik
        << setw(2) << h.szul_ho << '-'  // HH-
        << setw(2) << h.szul_nap << ')' // NN)
        << setfill(' ');                // Visszaállítjuk az eredeti állapotot

    // A kiíró operátor mindig a streamet adja vissza
    return os;
}
