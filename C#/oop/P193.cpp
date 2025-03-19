#include <iostream>
using namespace std;

// a Vektor osztály deklarációja
class Vektor {
  private:           // private elérésû adattagok
     int x,y;
  public:            // public elérésû tagfüggvények (metódusok)
     void init(int a,int b) {x=a; y=b;}
     int getx() {return x;}
     int gety() {return y;}
};

// a Vektor osztály definíciójához meg kell adnunk az összes  
// tagfüggvény definícióját is! (Itt nem szerepelnek!)

 int main()
{
  //a Vektor típusú objektumpéldány létrehozása
  Vektor v1;

  // hivatkozás az objektum tagjaira
  // a public elérésû init() tagfüggvény hívása - OK.
  v1.init(3,4);  
  cout<<'('<<v1.getx()<<','<<v1.gety()<<')'<<endl;
  cin.get();
}

