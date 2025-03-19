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
// A list�ban l�pkedve az elemek adatainak ki�r�sa
//------------------------------------------------
void lkiir(const book * start) {
  if (!start) {         // a lista nem l�tezik
     cerr<<"A lista nem letezik!"<<endl;
     return;   
  }
  const book * aktualis = start;
  cout<<endl;
  do {
       cout<<aktualis->nev<<'\t'<<aktualis->cim<<'\t'<<
             aktualis->ev<<'\t'<<aktualis->ar<<endl;
       // L�p�s a k�vetkez� elemre
       aktualis = aktualis->kovetkezo;
     } while (aktualis != NULL);
}


//------------------------------------------------
// A index sorsz�m� elem lokaliz�l�sa �s m�g�
// �j elem besz�r�sa
//------------------------------------------------
void lbeszur(book * & start, const book b, int index=0x7fffffff)
{
  // Ter�letfoglal�s az �j elem sz�m�ra
  book * uj = new book;
  uj->kovetkezo = NULL;
  if (!uj) {
      cerr<<"\a\nNincs eleg memoria!\n";
      return;
  }
  // Az �j elem adatainak felt�lt�se
  strcpy(uj->nev, b.nev);
  strcpy(uj->cim, b.cim);
  uj->ev = b.ev;
  uj->ar = b.ar;

  // A megel�z� elem hely�nek meghat�roz�sa
  if (start==NULL) {    // Az �j lista els� eleme az �j elem
      start = uj;      
      uj->kovetkezo = NULL;
      return;  
  }
  
  book * aktualis = start;
  if (index<0) {         // A liste els� eleme el� sz�runk be
      uj->kovetkezo = start;
      start = uj;
      return;
  }
  else {                 // Nem els� elem eset�n 
     for (int i = 0; i<index; i++) {
       if (aktualis->kovetkezo == NULL) break;  // el�rt�k a lista v�g�t
       aktualis = aktualis->kovetkezo;
     }        
     // Az �j elem bef�z�s a l�ncba
     uj->kovetkezo = aktualis->kovetkezo;
     aktualis ->kovetkezo = uj;
  }   
}

//------------------------------------------------
// A teljes lista megsz�ntet�se
//------------------------------------------------
void lmindtorol(book * & start) 
{ 
  if (!start) return;         // a lista nem l�tezik
  book * aktualis = start, * kovetkezo;
  do {
     kovetkezo = aktualis->kovetkezo;
     delete aktualis;
     aktualis = kovetkezo;
  } while (kovetkezo != NULL);
  start = NULL;  // Nincs lista!
}

//------------------------------------------------
// Adott index� elem t�rl�se a list�b�l
//------------------------------------------------
void ltorol(book * & start, int index=0x7FFFFFFF) 
{
  if (!start) return;         // a lista nem l�tezik
  book * aktualis = start, * elozo;
  if (index==0)              // az els� elem t�rl�se
     start = start->kovetkezo;
  else {                     // tov�bbi elem t�rl�se
     for (int i = 0; i<index; i++) {
        if (aktualis->kovetkezo == NULL) break;  // el�rt�k a lista v�g�t
        elozo    = aktualis;
        aktualis = aktualis->kovetkezo;  
     }
     // A t�rl�s - kif�z�s a l�ncb�l
     elozo->kovetkezo = aktualis->kovetkezo;
  }   
  // A ter�let felszabad�t�sa
  delete aktualis;
}


//------------------------------------------------
// A f�program
//------------------------------------------------
int main()
{
   book *start=NULL, btmp;

  // A lista fel�p�t�se �s az elemek v�letlen felt�lt�se
  srand(unsigned(time(NULL)));
  for (int index = 0;index < 10;index++) {
     // a listaelem adattagjainak felt�lt�se
     sprintf(btmp.nev,"%03d Anonymous", index);
     sprintf(btmp.cim,"Nothing %03d", index);
     btmp.ev = 1900+rand()%106;
     btmp.ar = 500+rand()%6500 * 1.5;
    lbeszur(start, btmp);
  }
  lkiir(start); cin.get();
  // ----------------------------------------------------------

  // A 4. sorsz�m� elem t�rl�se
  ltorol(start, 4);
  // A 0. sorsz�m� (els�) elem t�rl�se
  ltorol(start,0);
  // Az utols� elem t�rl�se
  ltorol(start);
  lkiir(start); cin.get();
  // ----------------------------------------------------------

  strcpy(btmp.nev,"!!! Lafenita");
  strcpy(btmp.cim,"C/C++   !!!");
  btmp.ev = 1979;
  btmp.ar = 1223;
  // �j elem besz�r�sa a 3. sorsz�m� elem ut�n 
  lbeszur(start, btmp, 3);
  // �j elem besz�r�sa a lista elej�re 
  lbeszur(start, btmp, -1);
  // �j elem besz�r�sa a lista v�g�re 
  lbeszur(start, btmp);
  lkiir(start); cin.get();
  // ----------------------------------------------------------

  // A teljes lista t�rl�se
  lmindtorol(start);
  lkiir(start);
  // ----------------------------------------------------------
  cin.get();
}

