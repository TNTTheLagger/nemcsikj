#include <iostream>
#include<cmath>
using namespace std;

// Absztrakt alaposztaly
class Alakzat {
private:
	int szin;
public:
	static const double pi; 
	Alakzat(int sz=2) { szin=szin; }
	virtual double terulet()=0; //absztrakt virtualis tagfv.
	virtual double kerulet()=0; //absztrakt virtualis tagfv.
	void megjelenit() {
		 cout<<"\tterulet: "<<terulet()<<endl;
		 cout<<"\tkerulet: "<<kerulet()<<endl;
	}
};

const double Alakzat::pi=3.14159265;


// Negyzet utodosztaly
class Negyzet : public Alakzat {
protected:
	double a;
public:
	Negyzet(double n=0, int sz=2) : Alakzat(sz) { a=n; }
	double terulet() { return a*a; }
	double kerulet() { return 4*a; }
};


// Kor utodosztaly
class Kor : public Negyzet {
public:
	Kor(double r=0, int sz=2) : Negyzet(2*r,sz){}
	double terulet() { return a*a*pi/4; }
	double kerulet() { return a*pi; }
};


// Teglalap utodosztaly
class Teglalap : public Negyzet {
protected:
	double b;
public:
	Teglalap(double n=0, double m=0, int sz=2) : Negyzet(n,sz) { b=m;}
	double terulet() { return a*b; }
	double kerulet() { return 2*(a+b); }
};

// Ellipszis utodosztaly
class Ellipszis : public Teglalap {
public:
	Ellipszis(double ra=0, double rb=0, int sz=2) : Teglalap(2*ra,2*rb,sz) {}
	double terulet() { return a*b*pi/4; }
	double kerulet() { return 0.5*pi*(1.5*(a+b)-sqrt(a*b)); }
};

int main()
{
	Negyzet n(10);   // 10x10
	cout<<"Negyzet: "<<endl;
	n.megjelenit();

	Teglalap t(10,20);  // 10x20  
	cout<<"Teglalap: "<<endl;
	t.megjelenit();

	Kor k(5);  // sugar:5    
	cout<<"Kor: "<<endl;
	k.megjelenit();

	Ellipszis e(5,10);  // sugar:5 es sugar:10
	cout<<"Ellipszis: "<<endl;
	e.megjelenit();

    cin.get();
}
