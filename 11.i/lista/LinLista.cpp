#include <iostream>
#include <cstdio>
#include <ctime>
#include <cstdlib>
#include <climits>

using namespace std;


struct book {
       char  nev [20];
       char  cim [40];
       int   ev;
       float ar;
       book * kovetkezo;
};

//------------------------------------------------
// A listában lépkedve az elemek adatainak kiírása
//------------------------------------------------
void lkiir(const book * start) {
  if (!start) {         // a lista nem létezik
     cerr<<"A lista nem letezik!"<<endl;
     return;   
  }
  const book * aktualis = start;
  cout<<endl;
  do {
       cout<<aktualis->nev<<'\t'<<aktualis->cim<<'\t'<<
             aktualis->ev<<'\t'<<aktualis->ar<<endl;
       // Lépés a következõ elemre
       aktualis = aktualis->kovetkezo;
     } while (aktualis != NULL);
}


//------------------------------------------------
// A index sorszámú elem lokalizálása és mögé
// új elem beszúrása
//------------------------------------------------
void lbeszur(book * & start, const book b, int index=0x7fffffff)
{
  // Területfoglalás az új elem számára
  book * uj = new book;
  uj->kovetkezo = NULL;
  if (!uj) {
      cerr<<"\a\nNincs eleg memoria!\n";
      return;
  }
  // Az új elem adatainak feltöltése
  strcpy(uj->nev, b.nev);
  strcpy(uj->cim, b.cim);
  uj->ev = b.ev;
  uj->ar = b.ar;

  // A megelõzõ elem helyének meghatározása
  if (start==NULL) {    // Az új lista elsõ eleme az új elem
      start = uj;      
      uj->kovetkezo = NULL;
      return;  
  }
  
  book * aktualis = start;
  if (index<0) {         // A liste elsõ eleme elé szúrunk be
      uj->kovetkezo = start;
      start = uj;
      return;
  }
  else {                 // Nem elsõ elem esetén 
     for (int i = 0; i<index; i++) {
       if (aktualis->kovetkezo == NULL) break;  // elértük a lista végét
       aktualis = aktualis->kovetkezo;
     }        
     // Az új elem befûzés a láncba
     uj->kovetkezo = aktualis->kovetkezo;
     aktualis ->kovetkezo = uj;
  }   
}

//------------------------------------------------
// A teljes lista megszüntetése
//------------------------------------------------
void lmindtorol(book * & start) 
{ 
  if (!start) return;         // a lista nem létezik
  book * aktualis = start, * kovetkezo;
  do {
     kovetkezo = aktualis->kovetkezo;
     delete aktualis;
     aktualis = kovetkezo;
  } while (kovetkezo != NULL);
  start = NULL;  // Nincs lista!
}

//------------------------------------------------
// Adott indexû elem törlése a listából
//------------------------------------------------
void ltorol(book * & start, int index=0x7FFFFFFF) 
{
  if (!start) return;         // a lista nem létezik
  book * aktualis = start, * elozo;
  if (index==0)              // az elsõ elem törlése
     start = start->kovetkezo;
  else {                     // további elem törlése
     for (int i = 0; i<index; i++) {
        if (aktualis->kovetkezo == NULL) break;  // elértük a lista végét
        elozo    = aktualis;
        aktualis = aktualis->kovetkezo;  
     }
     // A törlés - kifûzés a láncból
     elozo->kovetkezo = aktualis->kovetkezo;
  }   
  // A terület felszabadítása
  delete aktualis;
}


//------------------------------------------------
// A fõprogram
//------------------------------------------------
int main()
{
   book *start=NULL, btmp;

  // A lista felépítése és az elemek véletlen feltöltése
  srand(unsigned(time(NULL)));
  for (int index = 0;index < 10;index++) {
     // a listaelem adattagjainak feltöltése
     sprintf(btmp.nev,"%03d Anonymous", index);
     sprintf(btmp.cim,"Nothing %03d", index);
     btmp.ev = 1900+rand()%106;
     btmp.ar = 500+rand()%6500 * 1.5;
    lbeszur(start, btmp);
  }
  lkiir(start); cin.get();
  // ----------------------------------------------------------

  // A 4. sorszámú elem törlése
  ltorol(start, 4);
  // A 0. sorszámú (elsõ) elem törlése
  ltorol(start,0);
  // Az utolsó elem törlése
  ltorol(start);
  lkiir(start); cin.get();
  // ----------------------------------------------------------

  strcpy(btmp.nev,"!!! Lafenita");
  strcpy(btmp.cim,"C/C++   !!!");
  btmp.ev = 1979;
  btmp.ar = 1223;
  // Új elem beszúrása a 3. sorszámú elem után 
  lbeszur(start, btmp, 3);
  // Új elem beszúrása a lista elejére 
  lbeszur(start, btmp, -1);
  // Új elem beszúrása a lista végére 
  lbeszur(start, btmp);
  lkiir(start); cin.get();
  // ----------------------------------------------------------

  // A teljes lista törlése
  lmindtorol(start);
  lkiir(start);
  // ----------------------------------------------------------
  cin.get();
}

