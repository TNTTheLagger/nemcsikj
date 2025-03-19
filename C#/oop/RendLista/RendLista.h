// RendLista.h
#include <iostream>
#include <iomanip>

using namespace std;

class Lista
{
 private:
  struct ListaElem
  {
    int Info;
    ListaElem *Link;
  };
  int elemszam;
  const bool azonosak; 
  ListaElem *bptr; // a lista eleje
  ListaElem *iptr; // az iteratornak
 public:
  Lista(const int & data, bool Azonosak = true);
  Lista(bool Azonosak = true) : azonosak(Azonosak) { 
      bptr  = iptr = 0;  elemszam=0; 
  }
  ~Lista() ;

  void OutIterator();
  int& operator()();
  void Beszur(const int &);
  void Torol(const int &);
  bool Keres(const int &);
  int Darab() {return elemszam;}
};



