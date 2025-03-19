#include <iostream>
#include <fstream>
using namespace std;

int i,j,k, r, db;
int n;
fstream be;
ofstream ki;
int t[30001];
//bool o[30001];
bool ok;

int main()
{
	//be
	be.open("pakol.be");
	be>>n;
	for(i=1;i<=n;i++)
	{be>>t[i];}
	be.close();
	//prg.
	ok=false;
	db=0;
	do
	{
		for(i=1;i<=n;i++)
		{
			if(t[i]!=i) 
			{
				//cout<<i<<"-edik konyv nincs jo helyen."<<t[i]<<"\n";
				break;}
		}
		r=i;
		//cout<<"|---->Megkeressuk a parjat\n";
		for(i=1;i<=n;i++)
		{
			if(t[i]==r) 
			{db++;
				//cout<<"----------->Megvan: "<<i<<", megcsereljuk: regi: "<<t[i]<<" "<<t[r];
				k=t[i];
				t[i]=t[r];
				t[r]=k;
				//cout<<"----------->Csere utan: "<<t[i]<<" "<<t[r];
				break;
			}
		}
		ok=true;
		for(i=1;i<=n;i++)
		{
			if(t[i]!=i) {ok=false;break;}
		}
		//system("pause");
	}while(!ok);
	ki.open("pakol.ki");
	ki<<db;
	ki.close();
}