// Az alaposzt�ly 
class B { 
   int x, y;
 public:
   int b1, b2;
   int Bfunc1(void) { return x;}
   int Bfunc2(void) { return y;}
};

// A sz�rmaztatott oszt�ly
class D: private B  {
   // az �r�kl�tt b2 elfed�se
   int b2;   
   int d;
 public:
   // a private sz�rmaztat�ssal �r�kl�tt b1 public el�r�s� lesz
   B::b1;    
   // az �r�kl�tt Bfunc1() elfed�se
   void Bfunc1(void); 
};

void D::Bfunc1(void) {
     d =B::Bfunc1(); // a nem l�that� Bfunc1() el�r�se
     b1=Bfunc2();    // a Bfunc2() l�that�
     b2=B::b2;       // a nem l�that� b2 adattag el�r�se
}

int main() {
   D od;
   od.b1=23;
}


