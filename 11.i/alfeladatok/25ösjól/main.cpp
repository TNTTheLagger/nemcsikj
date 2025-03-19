#include <cstdlib>
#include <time.h>
#include <iostream>

using namespace std;

void Tippelos(int szam, int tipp)
{
    do {
            cout << "Ird be a tippedet: ";
            cin >> tipp;
            if (tipp < szam)
                  cout << "A tippelt szam kisebb, mint a gondolt szam" << endl;
            else if (tipp > szam)
                  cout << "A tippelt szam nagyobb, mint a gondolt szam" << endl;
            else
                  cout << "Eltalaltad!" << endl;
      } while (tipp != szam);
}

int main() {
      srand(time(0));
      int szam;
      szam = rand() % 100 + 1;
      int tipp;
      Tippelos(szam, tipp);
      system("PAUSE");
      return 0;
}


