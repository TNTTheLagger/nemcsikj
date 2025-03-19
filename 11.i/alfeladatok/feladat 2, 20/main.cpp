#include <cstdlib>
#include <iostream>
#include <math.h>

using namespace std;

int sum = 0;
double pi;

int summ()
{
  for (int i = 1; i < 101; i++)
  {
     sum+=i;        
  }      
  return sum;
}

double picount()
{
    double p2p6 = 0;
    for(int i = 1; i < 100; i++)
    {
         p2p6 += 1/(i*i);
    }
    pi = sqrt(p2p6*6);
    return pi;
}

int main(int argc, char *argv[])
{
    sum = summ();
    pi = picount();
    cout<<"Az elso 100 szam osszeadva: "<<sum<<endl<<"PI erteke kozelitve: "<<pi<<endl; 
    system("PAUSE");
    return EXIT_SUCCESS;
}
