#include <iostream>
#include <fstream>
using namespace std;

int n,m;
int i,j,k, cs;
fstream be;
ofstream ki;
int t[1001][1001], vl[1001], vldb, kgy[1001], kgydb, c, cf[1001];
bool volt, gyv;
int db;


int mgyl(int ki)
{ int ci,cj;
	for(ci=1;ci<=n;ci++)
		{
			if(t[ki][ci]==1)
			{  db++;
				mgyl(ci);
			}
		}
	return db;
}

int main()
{
	//be
	be.open("kieses.be");
	be>>n;be>>m;
	for(i=1;i<=m;i++)
	{
		be>>j;be>>k;
		t[j][k]=1;
	}
	be.close();
	vldb=0;
	//prg.
	//1
	for(i=1;i<=n;i++)
	{ k=0;
		for(j=1;j<=n;j++)
		{
			if(t[j][i]==1) 
			{k++;
			}
		}
	 // cout<<"i "<<i<<" k "<<k<<"\n";
	  if(k==0){ vldb++; vl[vldb]=i;}
	}

	//2
	kgydb=0;
	for(i=1;i<=n;i++)
	{volt=false;
		for(j=1;j<=vldb;j++)
		    if(i==vl[j]) volt=true;
	    if(volt==false)
		{gyv=false;
			for(j=1;j<=n;j++)
			{
				if(t[i][j]==1) gyv=true;
			}
			if(gyv==true) { kgydb++;  kgy[kgydb]=i;}
		}
	}
	//3
	for(i=1;i<=n;i++)
		cf[i]=0;
	
	for(i=1;i<=n;i++)
	{db=0;
		cf[i]=mgyl(i);
		//cout<<cf[i]<<"\n";
	}
	//system("pause");
	c=1;
	for(i=1;i<=n;i++)
		if(cf[c]<cf[i]) c=i;

	//ki
	ki.open("kieses.ki");
	for(i=1;i<=vldb;i++)
		for(j=i;j<=vldb;j++) if(vl[i]>vl[j]) {cs=vl[i]; vl[i]=vl[j]; vl[j]=cs;}
	for(i=1;i<=kgydb;i++)
		for(j=i;j<=kgydb;j++) if(kgy[i]>kgy[j]) {cs=kgy[i]; kgy[i]=kgy[j]; kgy[j]=cs;}
	ki<<vldb;
	for(i=1;i<=vldb;i++) ki<<" "<<vl[i];
	ki<<"\n"<<kgydb;
	for(i=1;i<=kgydb;i++) ki<<" "<<kgy[i];
	ki<<"\n"<<c;
	ki.close();
}