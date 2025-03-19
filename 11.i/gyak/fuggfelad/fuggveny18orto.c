#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

void nagybetu (char xyz[]);

int main()
{
char str[] = "nemcsik janos (ninja)";

nagybetu(&str);
}

void nagybetu (char xyz[]){

int i=0, szokoz=1;
char c;

while (xyz[i])
{
c=xyz[i];
if (c==' ') szokoz=1;
if (islower(c) && szokoz==1){
c=toupper(c);
szokoz=0;
}
putchar(c);
i++;
}
}

