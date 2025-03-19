// Az alaposztály 
class B { 
   int x, y;
 public:
   int b1, b2;
   int Bfunc1(void) { return x;}
   int Bfunc2(void) { return y;}
};

// A származtatott osztály
class D: private B  {
   // az öröklött b2 elfedése
   int b2;   
   int d;
 public:
   // a private származtatással öröklött b1 public elérésû lesz
   B::b1;    
   // az öröklött Bfunc1() elfedése
   void Bfunc1(void); 
};

void D::Bfunc1(void) {
     d =B::Bfunc1(); // a nem látható Bfunc1() elérése
     b1=Bfunc2();    // a Bfunc2() látható
     b2=B::b2;       // a nem látható b2 adattag elérése
}

int main() {
   D od;
   od.b1=23;
}


