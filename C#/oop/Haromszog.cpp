#include <iostream>
#include <cmath>
using namespace std;

class Haromszog {
private:
	double a,b,c;
public:
	Haromszog(double a=3, double b=4, double c=5) throw (const char *) { Oldalak(a,b,c); }
	void Oldalak(double x, double y, double z) throw (const char *);
	double A() { return a;}	
	double B() { return b;}	
	double C() { return c;}
	double Kerulet() { return a+b+c;}
	double Terulet() { double s=Kerulet()/2; return sqrt(s*(s-a)*(s-b)*(s-c)); }
};

void Haromszog::Oldalak(double x, double y, double z) throw (const char *)
{
	if (x+y>z && x+z>y && y+z>x){a=x; b=y; c=z;}
		else throw "Nem haromszog";
}

int main() 
{
	double a,b,c;
	try {
		cout<<"a="; cin>>a;
		cout<<"b="; cin>>b;
		cout<<"c="; cin>>c;
	
		Haromszog h(a,b,c);
		cout<<"Kerulet:"<<h.Kerulet()<<endl;
		cout<<"Terulet:"<<h.Terulet()<<endl;
	}
	catch(const char * uzenet)
	{
		cerr<<uzenet<<endl;
	}
	catch(...)
	{
		cerr<<"Valamilyen hiba lepett fel!"<<endl;
	}
        cin.get();
        cin.get();
}
