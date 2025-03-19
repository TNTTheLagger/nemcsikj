// RendLista.cpp
#include "RendLista.h"
// paraméterezett konstruktor
Lista::Lista(const int & adat, bool Azonosak) : azonosak(Azonosak)
{
  ListaElem * newptr;

  newptr = new ListaElem;
  newptr->Info = adat;
  newptr->Link = NULL;
  iptr = bptr = newptr;
  elemszam=1;
}

// destruktor
Lista :: ~Lista()
{
  ListaElem *rptr, *tptr;
  for(tptr = bptr; tptr != NULL; tptr = rptr)
    {
    rptr = tptr->Link;
    tptr->Link = NULL;
    delete tptr;
    }
  bptr=NULL;  
  elemszam=0;
}

// új elem beszúrása a listába 
void Lista:: Beszur(const int & adat)
{
    ListaElem * sptr, *tptr, *newptr;
    
    // Ha azonosak==true, ellenõrizzük, hogy az új elem benne van-e már
    // a listában
    if (!azonosak && bptr != NULL) {
        sptr = bptr;
        while (sptr) {
           if (adat == sptr->Info) 
             return;
           else  
             sptr=sptr->Link;  
        }
    }
   
    
     // helyfoglalás az új elem számára
    newptr = new ListaElem;
    newptr->Info= adat;
    elemszam++;

    // elsõ elem 
    if (bptr==NULL) 
    {
       bptr=newptr;
       bptr->Link=NULL;
       return;
    }

    // ha az új adat <= az elsõ elemnél, akkor beszúrjuk elé
    if (const_cast<int & >(adat) <= bptr->Info)  
    { 
       newptr->Link=bptr;
       bptr=newptr;
       return;
     }

    // Megkeressük, hogy melyik két elem közé esik az adat 
    // ellenõrizzük a nála bagyobbat, vagy a lista végét 
    sptr=bptr;           // elsõ
    tptr=bptr->Link;     // második
    while (tptr != NULL && tptr->Info<=adat) 
    {
      sptr=tptr;        // továbblép 
      tptr=tptr->Link;
    }

   // mivel nincs az adat-nál nagyobb elem, a lista végére tesszük
   if (tptr==NULL && sptr->Info<=adat) 
   {
      sptr->Link=newptr;
      newptr->Link=NULL;
      return;
   }

   // ha az utolsó elem nagyom az adat-nál 
   if (tptr==NULL && sptr->Info>adat) 
   {
     tptr=sptr;
     sptr=bptr;
     // megkeressük az utolsó elõttit
     while (sptr->Link!=tptr)
        sptr=sptr->Link;
   }

   // az *sptr és a *tptr közé szúrjuk be az új elemet
   newptr->Link=tptr;
   sptr->Link=newptr;
}

// egy elem törlése a listából
void Lista :: Torol(const int & adat)
{
  ListaElem *rptr, *sptr;
  rptr=bptr; 
  bool talalt=false;
  while (rptr!=NULL) 
  {
    if (rptr->Info == adat)
    {
      talalt=true;
      break;
    } 
     rptr = rptr->Link;
  }
  
  if (talalt) {
    if (rptr==bptr) // elsõ elem
    {
       bptr=rptr->Link;
       delete rptr;
       elemszam--;
    }  
    else
    { 
       // ha nem elsõ megkeressük az elõtte álló elemet
       sptr=bptr;
       while (sptr->Link!=rptr)
          sptr=sptr->Link;
       sptr->Link=rptr->Link;
       delete rptr;
       elemszam--;
    }   
  }
}

// adat keresese a listaban (van/nincs)
bool Lista :: Keres(const int & adat)
{
  ListaElem *rptr;
  rptr=bptr; 
  bool talalt = false;
  while (rptr!=NULL) 
  {
    if (rptr->Info == adat)
    {
      talalt = true;
      break;
    } 
    rptr = rptr->Link;
  }  
  return talalt;  
 }

// kiíró iterátor
void Lista :: OutIterator()
{
  ListaElem * rptr;
  rptr = bptr;
  while( rptr != NULL)
  {
      cout << setw(5) << rptr->Info;
      rptr = rptr ->Link;
  }
}

// iterátor
int & Lista :: operator()()
{
  ListaElem * sptr;
  if (iptr!=0)
     sptr=iptr;
  else
     sptr=iptr=bptr;  
  iptr=iptr->Link;
  return sptr->Info;
} 


