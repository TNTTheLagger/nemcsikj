// RendLista.cpp
#include "RendLista.h"
// param�terezett konstruktor
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

// �j elem besz�r�sa a list�ba 
void Lista:: Beszur(const int & adat)
{
    ListaElem * sptr, *tptr, *newptr;
    
    // Ha azonosak==true, ellen�rizz�k, hogy az �j elem benne van-e m�r
    // a list�ban
    if (!azonosak && bptr != NULL) {
        sptr = bptr;
        while (sptr) {
           if (adat == sptr->Info) 
             return;
           else  
             sptr=sptr->Link;  
        }
    }
   
    
     // helyfoglal�s az �j elem sz�m�ra
    newptr = new ListaElem;
    newptr->Info= adat;
    elemszam++;

    // els� elem 
    if (bptr==NULL) 
    {
       bptr=newptr;
       bptr->Link=NULL;
       return;
    }

    // ha az �j adat <= az els� elemn�l, akkor besz�rjuk el�
    if (const_cast<int & >(adat) <= bptr->Info)  
    { 
       newptr->Link=bptr;
       bptr=newptr;
       return;
     }

    // Megkeress�k, hogy melyik k�t elem k�z� esik az adat 
    // ellen�rizz�k a n�la bagyobbat, vagy a lista v�g�t 
    sptr=bptr;           // els�
    tptr=bptr->Link;     // m�sodik
    while (tptr != NULL && tptr->Info<=adat) 
    {
      sptr=tptr;        // tov�bbl�p 
      tptr=tptr->Link;
    }

   // mivel nincs az adat-n�l nagyobb elem, a lista v�g�re tessz�k
   if (tptr==NULL && sptr->Info<=adat) 
   {
      sptr->Link=newptr;
      newptr->Link=NULL;
      return;
   }

   // ha az utols� elem nagyom az adat-n�l 
   if (tptr==NULL && sptr->Info>adat) 
   {
     tptr=sptr;
     sptr=bptr;
     // megkeress�k az utols� el�ttit
     while (sptr->Link!=tptr)
        sptr=sptr->Link;
   }

   // az *sptr �s a *tptr k�z� sz�rjuk be az �j elemet
   newptr->Link=tptr;
   sptr->Link=newptr;
}

// egy elem t�rl�se a list�b�l
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
    if (rptr==bptr) // els� elem
    {
       bptr=rptr->Link;
       delete rptr;
       elemszam--;
    }  
    else
    { 
       // ha nem els� megkeress�k az el�tte �ll� elemet
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

// ki�r� iter�tor
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

// iter�tor
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


