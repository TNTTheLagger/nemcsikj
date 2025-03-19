#include <cstdio>
#include <vector>
#include <iostream>

using namespace std;

bool biztonsagos (int sor, int oszlop, const int Lista[]) { 
  for (int qoszlop = 0; qoszlop < oszlop; qoszlop++) { 
    int qsor = Lista[qoszlop];
    if ((qsor == sor) || (qoszlop-qsor == oszlop-sor) || 
                         (qoszlop+qsor == oszlop+sor) )
      return false; // ugyanabban a sorban vagy �tl�san
  }
  return true; // biztons�gos, nem �thet�
}

bool elhelyez (int Lista[], int oszlop)
{
  bool talalt = false;
  if (oszlop == 8) 
    talalt = true; // mind a 8 kir�lyn� a hely�n
  else
  { 
    int sor = 0;
    while (sor < 8 && !talalt) // a kir�lyn� oszlopa
    { 
      if (biztonsagos(sor,oszlop,Lista))
      { Lista[oszlop] = sor;    // a kir�lyn� sora
        talalt = elhelyez(Lista,oszlop+1); // a t�bbit el kell helyezni
        if (!talalt) sor++;  // egyanennek az oszlopnak a k�vetkez� sora
      }
      else 
        sor++; // nem biztons�gos, a k�vetkez� sorra mozgatjuk
    }
  }
  return talalt; // megtal�ltuk a megold�st?
}

bool kiralyno8 (int Lista[], int sor)
{ 
  Lista[0] = sor; // a sakkt�bla [sor,0] poz�ci�j�t�l indulunk
  return elhelyez(Lista,1); // az 1. oszlopban folyatjuk
}

int main()
{
  int sor;
  int queenList[8]={0,0,0,0,0,0,0,0};

  cout << "Valassza ki az elso kiralyno sorat (1..8) : ";
  cin >> sor;    cin.get();
  sor--;
  	
  if (kiralyno8(queenList,sor%8)) {
    cout << "\nA 8 Kiralyno problema egy megoldasa:\n\n";
   
     cout<<"     ";
    for (int c=0; c<8 ;c++ )
    cout<<c+1<<"  ";
    cout<<endl;
    
    for (int r=0; r<8; r++) {
       cout<<r+1<<" - ";
       for (int c=0; c<8 ;c++ )
          if (r == queenList[c])
             cout<<" Q ";
          else
             cout<<" : ";
       cout<<endl;
    }         
    cout<<endl;
    for (int c=0; c<8 ;c++ )
     cout << c+1<<". Kiralyno, oszlop: " << c+1 << " sor: " << queenList[c]+1 << endl; 

  }
   else
     cout << "\nA(z) "<<sor<<". sorral ind�tva, nem letezik megoldasa a feladatnak!"<< endl;

   cin.get();
}


