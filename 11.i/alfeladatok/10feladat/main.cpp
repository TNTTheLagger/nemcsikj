#include <iostream>
#include <cmath>

using namespace std;

int vizsgalat (int i,int n)
{
 for (i=1;i<sqrt(n);i++)
        cout << i*i<<endl;
   return (i);
}

int main()
{
    int i,n;
    cout << "Negyzetszamok n-ig" << endl;
    cout << "n = ";
    cin >> n;
    vizsgalat (i,n);
    return 0;
}
