#include <iostream>

using namespace std;

int main()
{
int n;
int factorial,i;

cout << "Irj be egy pozitiv szamot: ";
cin >> n;

	for (i = 0; i <= n; i++)

		if (i == 0)
		factorial = 1;
		else
		factorial = factorial * i;

	cout << "A(z) "  << n << " faktorialisa " << factorial << endl;
}
