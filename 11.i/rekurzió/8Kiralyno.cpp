#include <cstdio>
#include <vector>
#include <iostream>

using namespace std;

bool biztonsagos (int sor, int oszlop, const int Lista[]) { 
  for (int qoszlop = 0; qoszlop < oszlop; qoszlop++) { 
    int qsor = Lista[qoszlop];
    if ((qsor == sor) || (qoszlop-qsor == oszlop-sor) || 
                         (qoszlop+qsor == oszlop+sor) )
      return false; // ugyanabban a sorban vagy átlósan
  }
  return true; // biztonságos, nem üthetõ
}

bool elhelyez (int Lista[], int oszlop)
{
  bool talalt = false;
  if (oszlop == 8) 
    talalt = true; // mind a 8 királynõ a helyén
  else
  { 
    int sor = 0;
    while (sor < 8 && !talalt) // a királynõ oszlopa
    { 
      if (biztonsagos(sor,oszlop,Lista))
      { Lista[oszlop] = sor;    // a királynõ sora
        talalt = elhelyez(Lista,oszlop+1); // a többit el kell helyezni
        if (!talalt) sor++;  // egyanennek az oszlopnak a következõ sora
      }
      else 
        sor++; // nem biztonságos, a következõ sorra mozgatjuk
    }
  }
  return talalt; // megtaláltuk a megoldást?
}

bool kiralyno8 (int Lista[], int sor)
{ 
  Lista[0] = sor; // a sakktábla [sor,0] pozíciójától indulunk
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
     cout << "\nA(z) "<<sor<<". sorral indítva, nem letezik megoldasa a feladatnak!"<< endl;

   cin.get();
}


