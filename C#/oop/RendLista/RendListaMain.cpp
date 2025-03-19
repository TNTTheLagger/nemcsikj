#include <iostream>
#include <cstdlib>
#include <ctime>
#include "RendLista.h"
using namespace std;

int main()
{
  srand((unsigned)time(NULL));
  Lista Lotto5(false); // nincs ismétlõdés
  while (Lotto5.Darab()<5)
     Lotto5.Beszur(rand()%90+1);
  Lotto5.OutIterator();
  cout<<endl<<endl;

  Lista Szamsor; // ismétlõdés lehet
  while (Szamsor.Darab()<12)
     Szamsor.Beszur(rand()%23+1);
  Szamsor.OutIterator();
  cout<<endl<<endl;
  
  cin.get();
  return 0;
}
