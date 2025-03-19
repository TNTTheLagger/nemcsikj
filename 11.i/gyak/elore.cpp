#include <iostream>
#include <fstream>
using namespace std;

//dekl.
fstream be;
ofstream ki;
int i,j;
int n,m,k;
int t[1001][1001];
int f[5], maxi, a[1001], ks[1001], b, df[1001], dff[1001];
bool nl[1001];


int main()
{
	//be
	be.open("elore.be");
	be>>n;be>>m;be>>k;
	for(i=1;i<=n;i++)
	{dff[i]=0;
	    for(j=1;j<=m;j++)
			be>>t[i][j];
	}
	//prg.
	f[1]=1;
	f[2]=1;
	f[3]=1;
	f[4]=1;
	maxi=1;
	ki.open("elore.ki");
	//a
	for(i=1;i<=n;i++)
	{
		for(j=1;j<=m;j++)
		{
			if(t[i][j]>t[f[1]][maxi])
			{
				f[1]=i;
				maxi=j;
			}
		}
	}
	ki<<f[1]<<"\n";
	//b
	for(i=1;i<=n;i++){ a[i]=-999999;ks[i]=0; df[i]=0;}
	for(i=1;i<=n;i++)
	{
		for(j=1;j<=m;j++)
		 a[i]+=t[i][j];
		a[i]=a[i]/m;
		if(a[i]>a[f[2]]) f[2]=i;
	}
	ki<<f[2]<<"\n";
	//c
	for(i=1;i<=n;i++)
	{//cout<<"-----------------------"<<i<<"\n";
		for(j=1;j<=m;j++)
		{
			if(t[i][j]>k)
			{
				b=j;//cout<<"----->b"<<b;
				do
				{
					j++;
				}while(t[i][j]>k && j<=m);
				//cout<<"-tol "<<j<<"-ig";
				if(ks[i]<j-b) ks[i]=j-b;
				//cout<<"ksi "<<ks[i]<<"\n";
			}
		}
	}
	for(i=1;i<=n;i++)
		if(ks[i]>ks[f[3]]) f[3]=i;
	if(ks[f[3]]==0) f[3]=-1;
	ki<<f[3]<<"\n";
	for(i=1;i<=m;i++)
		nl[i]=false;
	//d																			-------------------------------------------------------------JAVÍTANI
	for(j=1;j<=m;j++)
	{k=1;
		for(i=1;i<=n;i++)
		{
			if(t[i][j]>t[k][j])
				k=i;
		}
		df[j]=k;
		//cout<<k;
		b=0;
		for(i=1;i<=n;i++)
		{
			if(t[i][j]==t[k][j]) b++;
			
		}
		//cout<<b;
		if(b!=1) nl[j]=true;
		//cout<<nl[j];

	}
	b=0;
	for(i=1;i<=m;i++)
	{
		if(nl[i]==false)
		{
			dff[df[i]]++;
		}
		else
		{b++;}
	}
	if(b!=m)
	{ k=1;
	   for(i=1;i<=n;i++)
	   {
		   if(dff[k]<dff[i]) k=i;
       }
	   ki<<k;
	}
	else
	{
		ki<<"-1";
	}
	ki.close();
}