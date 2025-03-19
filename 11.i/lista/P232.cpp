#include <iostream>
using namespace std;

class Pont2D {
   protected:
      int x,y;
   public:
      Pont2D(int a=0, int b=0) { x=a; y=b; }
      Pont2D(Pont2D & p) { *this = p; }
      void SetPont2D(int a=0, int b=0) { x=a; y=b; }   
      void GetPont2D(int& a, int& b) { a=x; b=y;} 
      void Kiir() {cout<<'('<<x<<','<<y<<')'<<endl;}  
};

class Pont3D : public Pont2D {
   protected:
      int z;
   public:
      Pont3D(int a=0, int b=0, int c=0):Pont2D(a,b),z(c) {}
      Pont3D(Pont3D & p):Pont2D(p.x, p.y),z(p.z) {} 
      void SetPont3D(int a=0, int b=0, int c =0) {x=a; y=b; z=c;}   
      void GetPont3D(int& a, int& b, int & c) { a=x; b=y; c=z; } 
      void Kiir() {cout<<'('<<x<<','<<y<<','<<z<<')'<<endl;}  
};

void Megjelenit(Pont2D & p) {
   p.Kiir();
}

int main()
{
  Pont2D p1(12,23), p2(p1), p3;
  Pont3D q1(12,23,79), q2(q1), q3;
  p1.Kiir();
  q1.Kiir();
  q2.SetPont3D(1,2,3);
  p3=q2;
  p2.Kiir();
  Megjelenit(p3);
  Megjelenit(q3);
  cin.get();
}

