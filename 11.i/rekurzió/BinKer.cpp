// BINKER.CPP

#include <iostream>
#include <iomanip>
using namespace std;

// Bináris keresés iteráció alkalmazásával 
int binkeri(int ertek, int tomb[], int n);

// Bináris keresés rekurzió alkalmazásával 
int binkerr(int ertek, int tomb[], int n);

int main()
{
  int a[12] = {1, 4, 7, 8, 9, 12, 17, 23, 25, 27, 31, 35}; 
  int i;
  cout<<"\nAz index         : ";  
  for (i=0; i<12; i++)
    cout<<setw(4)<<i;
  cout<<"\nA rendezett tomb : ";  
  for (i=0; i<12; i++)
    cout<<setw(4)<<a[i];
  cout<<endl;
      
  cout<<"\nIteracioval:\n"; 
  cout<<"  5 indexe: "<< binkeri( 5, a, 12)<<endl;
  cout<<" 12 indexe: "<< binkeri(12, a, 12)<<endl;
  cout<<" 23 indexe: "<< binkeri(23, a, 12)<<endl;
  cout<<"  1 indexe: "<< binkeri( 1, a, 12)<<endl;
  cout<<" 35 indexe: "<< binkeri(35, a, 12)<<endl;

  cout<<"\nRekurzioval:\n"; 
  cout<<"  5 indexe: "<< binkerr( 5, a, 12)<<endl;
  cout<<" 12 indexe: "<< binkerr(12, a, 12)<<endl;
  cout<<" 23 indexe: "<< binkerr(23, a, 12)<<endl;
  cout<<"  1 indexe: "<< binkerr( 1, a, 12)<<endl;
  cout<<" 35 indexe: "<< binkerr(35, a, 12)<<endl;

  cin.get();	
  return 0;
}

// Bináris keresés iteráció alkalmazásával 
int binkeri(int ertek, int tomb[], int n)
{	
	int kozepso, also = 0, felso = n;

	while (also < felso) 
    {
		kozepso = (also + felso) >> 1;
		if (ertek == tomb[kozepso])
		   return kozepso;

		if (ertek > tomb[kozepso])
		    // ertek > tomb[kozepso] : jobbra megyünk 
			also = kozepso + 1;  
		else
	        // különben balra megyünk  	
			felso = kozepso;
	}
	return -1;  // nem talalt 
}


// Bináris keresés rekurzió alkalmazásával 
int bk(int ertek, int tomb[], int also, int felso)
{
   int kozepso = (also + felso) >> 1;
   if (ertek == tomb[kozepso]) 
       return kozepso;
   else
      if (also == felso)
          return -1;  // nem talalt 
      else
          if (ertek > tomb[kozepso]) 
    	     // ertek > tomb[kozepso] : jobbra megyünk 
	         return bk(ertek, tomb, kozepso+1, felso);
          else   
 	        // különben balra megyünk  	
             return bk(ertek, tomb, also, kozepso);
}

int binkerr(int ertek, int tomb[], int n)
{
    return bk(ertek, tomb, 0, n);
}

