#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

int main()
{
	int szam, probalkozas, probszam = 0;
	srand(time(0));
	szam = rand() % 100 + 1;
	cout << "Talald ki a szamot\n\n";
	do
	{
		cout << "Irj be egy szamot 1 es 100 kozott : ";
		cin >> probalkozas;
		probszam++;
		if (probszam >= 10)
            cout << "\nNincs tobb probalkozasi lehetoseged!" " A kitalalando szam a(z) " << szam << " volt.\n";
		else if ((szam - probalkozas >= 16) or (szam - probalkozas <= -16))
			cout << "Hideg!\n\n";
		else if ((szam - probalkozas >= 8) or (szam - probalkozas <= -8))
			cout << "Langyos!\n\n";
		else if ((szam - probalkozas >= 4) or (szam - probalkozas <= -4))
			cout << "Meleg!\n\n";
		else if ((szam - probalkozas >= 2) or (szam - probalkozas <= -2))
			cout << "Forro!\n\n";
        else
			cout << "\n Gratulalok! Kitalaltad a szamot " << probszam << " probalkozasbol.\n";
	} while (probalkozas != szam && probszam != 10);

	cin.ignore();
	cin.get();
	return 0;
}
