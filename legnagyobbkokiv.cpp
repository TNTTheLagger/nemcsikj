#include <iostream>

using namespace std;

int main()
{
    int a, b, c, d;
    cout << "Legnagyobb kozos oszto!" << endl;
    cout << "Kerem az elso szamot! " << endl;
    cin >> a;

    cout << "Kerem a masodik szamot! " << endl;
    cin >> b;

    if (!(a>0 && b>0))
    {
        cout << "Hiba! termeszetes szamokkal dolgozom" ;
        return 0;
    }
    // foprogram:
    d=a;
    c=b;
    while(c!=d){
        if (c<d) d=d-c;
            else  c=c-d;

            }
            //eredmény kiirása
            cout << endl << "LNKO= " << d << endl;


    return 0;
}
