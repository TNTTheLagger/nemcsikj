#include <iostream>
using namespace std;
int main ()
{
    int alap, kitevo, szam, kitevomentes;

cout << "Hatvanyozas. \n Irj be egy szamot:";
cin >> alap;
cout << "Ird be a kitevot!";
cin >> kitevo;
kitevomentes=kitevo;
szam=alap;
while (kitevo!=1)
{
      alap=alap*szam;
      kitevo=kitevo-1;
}
}
cout << "A(z)  " << szam << "  " << kitevomentes << "-edik hatvanya:" << alap << "\n"; 


}
}
cout << "\n";
system ("pause");
}
