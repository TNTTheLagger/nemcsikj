#include <iostream>
using namespace std;

// a Vektor oszt�ly deklar�ci�ja
class Vektor {
  private:           // private el�r�s� adattagok
     int x,y;
  public:            // public el�r�s� tagf�ggv�nyek (met�dusok)
     void init(int a,int b) {x=a; y=b;}
     int getx() {return x;}
     int gety() {return y;}
};

// a Vektor oszt�ly defin�ci�j�hoz meg kell adnunk az �sszes  
// tagf�ggv�ny defin�ci�j�t is! (Itt nem szerepelnek!)

 int main()
{
  //a Vektor t�pus� objektump�ld�ny l�trehoz�sa
  Vektor v1;

  // hivatkoz�s az objektum tagjaira
  // a public el�r�s� init() tagf�ggv�ny h�v�sa - OK.
  v1.init(3,4);  
  cout<<'('<<v1.getx()<<','<<v1.gety()<<')'<<endl;
  cin.get();
}

