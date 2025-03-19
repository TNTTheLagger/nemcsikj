#include <iostream>
#include <fstream>
using namespace std;

int n,k;
int i,j,d;
int t[10001];
fstream be;
ofstream ki;
int mp,cm;

int main()
{
	//be
	be.open("jatek.be");
	be>>n;be>>k;
	for(i=1;i<=n;i++)
		be>>t[i];
	//prg.
	mp=0;
	for(i=1;i<=n;i++)
	{
		for(j=i;j<=n;j++)
		{
			if(t[i]<t[j])
			{
				d=t[i];
				t[i]=t[j];
				t[j]=d;
			}
		}
	}
	for(i=1;i<=k*2;i++)
	{	
		mp+=t[i];
	}
	//ki
	ki.open("jatek.ki");
	ki<<mp;
	ki.close();
}